package wres.vis.writing;

import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Path;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.graphics2d.svg.SVGGraphics2D;
import org.jfree.graphics2d.svg.SVGUtils;

import ohd.hseb.charter.ChartEngine;
import ohd.hseb.charter.ChartEngineException;
import ohd.hseb.charter.datasource.XYChartDataSourceException;
import ohd.hseb.charter.parameters.SubPlotParameters;
import ohd.hseb.charter.parameters.SubtitleParameters;
import ohd.hseb.charter.parameters.ThresholdParameters;
import wres.statistics.generated.Outputs;
import wres.statistics.generated.Outputs.GraphicFormat;
import wres.statistics.generated.Outputs.GraphicFormat.GraphicShape;
import wres.statistics.generated.Outputs.PngFormat;
import wres.statistics.generated.Outputs.SvgFormat;

/**
 * Helps to write a {@link ChartEngine} to a graphic in various formats.
 * 
 * @author james.brown@hydrosolved.com
 */

abstract class GraphicsWriter
{

    /**
     * Default chart height in pixels.
     */

    private static final int DEFAULT_GRAPHIC_HEIGHT = 600;

    /**
     * Default chart width in pixels.
     */

    private static final int DEFAULT_GRAPHIC_WIDTH = 800;

    /**
     * A description of the outputs required.
     */

    private final Outputs outputs;

    /**
     * The output directory to use to write
     */
    private final Path outputDirectory;

    /**
     * Returns the outputs description
     * 
     * @return the outputs description
     */

    Outputs getOutputsDescription()
    {
        return this.outputs;
    }

    Path getOutputDirectory()
    {
        return this.outputDirectory;
    }

    /**
     * Writes an output chart to a prescribed set of graphics formats.
     *
     * @param path the path to write, without the image format extension
     * @param engine the chart engine
     * @param dest the destination configuration
     * @return the path actually written
     * @throws GraphicsWriteException if the chart could not be written
     */

    static Set<Path> writeGraphic( Path path,
                                   ChartEngine engine,
                                   Outputs outputs )
    {
        Objects.requireNonNull( path );
        Objects.requireNonNull( engine );
        Objects.requireNonNull( outputs );

        try
        {
            // Adjust the chart engine
            GraphicsWriter.prepareChartEngineForWriting( engine );

            Set<Path> returnMe = new TreeSet<>();

            // Default is png
            if ( outputs.hasPng() )
            {
                int height = GraphicsWriter.getGraphicHeight( outputs.getPng().getOptions().getHeight() );
                int width = GraphicsWriter.getGraphicWidth( outputs.getPng().getOptions().getWidth() );
                Path resolvedPath = path.resolveSibling( path.getFileName() + ".png" );

                File outputImageFile = GraphicsWriter.validatePathAndReturnFile( resolvedPath );

                // #58735-18
                ChartUtilities.saveChartAsPNG( outputImageFile, engine.buildChart(), width, height );

                returnMe.add( resolvedPath );
            }
            if ( outputs.hasSvg() )
            {
                int height = GraphicsWriter.getGraphicHeight( outputs.getPng().getOptions().getHeight() );
                int width = GraphicsWriter.getGraphicWidth( outputs.getPng().getOptions().getWidth() );
                Path resolvedPath = path.resolveSibling( path.getFileName() + ".svg" );

                File outputImageFile = GraphicsWriter.validatePathAndReturnFile( resolvedPath );

                // Create the chart
                JFreeChart chart = engine.buildChart();

                // Create the svg string
                SVGGraphics2D svg2d = new SVGGraphics2D( width, height );
                // Need to set this to a fixed value as it will otherwise use the system time in nanos, preventing
                // automated testing. #81628-21.
                svg2d.setDefsKeyPrefix( "4744385419576815639" );
                chart.draw( svg2d, new Rectangle2D.Double( 0, 0, width, height ) );
                String svgElement = svg2d.getSVGElement();

                SVGUtils.writeToSVG( outputImageFile, svgElement );

                returnMe.add( resolvedPath );
            }

            return Collections.unmodifiableSet( returnMe );
        }
        catch ( IOException | ChartEngineException | XYChartDataSourceException | FontFormatException
                | CouldNotLoadRequiredFontException e )
        {
            throw new GraphicsWriteException( "Error while writing chart:", e );
        }
    }

    /**
     * Validates that the path does not already exist.
     * 
     * @return a valid file
     */

    private static File validatePathAndReturnFile( Path path )
    {
        File file = path.toFile();

        if ( file.exists() )
        {
            // But see #81735-173
            throw new GraphicsWriteException( "Cannot write file " + file + " because it already exists." );
        }

        return file;
    }

    /**
     * Overrides the appearance of the chart to support comparisons between SVG and image outputs across platforms.  
     * 
     * @param engine The charting engine to modify.  This is modified in place.
     * @throws CouldNotLoadRequiredFontException If the liberation font, captured in LiberationSans-Regular.ttf, 
     *            which should be on the classpath when this is executed, cannot be found.
     * @throws IOException The font file cannot be opened and used to create a font for whatever reason.
     * @throws FontFormatException The format of the font information cannot be understood.
     */
    private static void prepareChartEngineForWriting( ChartEngine engine )
            throws IOException, FontFormatException
    {
        //#81628 change.  Create the chart and force it to use a Liberation Sans font.  Below is a test run.
        //It will need to be enhanced later to modify *all* fonts in the JFreeChart.
        // Create the chart
        String fontResource = "LiberationSans-Regular.ttf";
        URL fontUrl = GraphicsWriter.class.getClassLoader().getResource( fontResource );

        // Load the font and force it into the chart.
        if ( Objects.isNull( fontUrl ) )
        {
            throw new CouldNotLoadRequiredFontException( "Could not find the " + fontResource
                                                         + " file on the class path." );
        }

        try
        {
            // Create from file, not stream
            // https://stackoverflow.com/questions/38783010/huge-amount-of-jf-tmp-files-in-var-cache-tomcat7-temp
            File fontFile = new File( fontUrl.toURI() );
            Font font = Font.createFont( Font.TRUETYPE_FONT, fontFile ).deriveFont( 10.0f );

            // Register font with graphics env
            GraphicsEnvironment graphics = GraphicsEnvironment.getLocalGraphicsEnvironment();
            graphics.registerFont( font );

            //Set all ChartEngine fonts to be the liberation font with size 10.
            engine.getChartParameters().getPlotTitle().setFont( font );
            engine.getChartParameters().getLegend().getLegendTitle().setFont( font );
            engine.getChartParameters().getLegend().getLegendEntryFont().setFont( font );
            engine.getChartParameters().getDomainAxis().getLabel().setFont( font ); //One shared domain axis.
            for ( SubPlotParameters subPlot : engine.getChartParameters().getSubPlotParameters() ) //Range axes by subplot.
            {
                subPlot.getLeftAxis().getLabel().setFont( font ); //Font is used for axis label and tick marks.
                subPlot.getRightAxis().getLabel().setFont( font ); //Font is used for axis label and ticks marks.
            }
            for ( SubtitleParameters parms : engine.getChartParameters().getSubtitleList().getSubtitleList() )
            {
                parms.setFont( font );
            }
            for ( ThresholdParameters parms : engine.getChartParameters()
                                                    .getThresholdList()
                                                    .getThresholdParametersList() )
            {
                parms.getLabel().setFont( font );
            }
        }
        catch ( URISyntaxException e )
        {
            throw new IOException( "While attempting to read a font.", e );
        }
    }

    /**
     * @param height the height
     * @return the height if the height is greater than zero, else the {@link GraphicWriter#DEFAULT_GRAPHIC_HEIGHT}.
     */

    private static int getGraphicHeight( int height )
    {
        if ( height > 0 )
        {
            return height;
        }

        return GraphicsWriter.DEFAULT_GRAPHIC_HEIGHT;
    }

    /**
     * @param width the height
     * @return the width if the width is greater than zero, else the {@link GraphicWriter#DEFAULT_GRAPHIC_WIDTH}.
     */

    private static int getGraphicWidth( int width )
    {
        if ( width > 0 )
        {
            return width;
        }

        return GraphicsWriter.DEFAULT_GRAPHIC_WIDTH;
    }

    /**
     * Helper that groups destinations by their common graphics parameters. Each inner outputs requires one set of 
     * graphics, written for each format present.
     * 
     * @param outputs the outputs
     * @return the groups of outputs by common graphics parameters
     */

    static Collection<Outputs> getOutputsGroupedByGraphicsParameters( Outputs outputs )
    {
        Objects.requireNonNull( outputs );

        // If there is only one format requested, then there is only one group
        Collection<Outputs> returnMe = new ArrayList<>();
        if ( outputs.hasPng() && outputs.hasSvg() )
        {
            PngFormat png = outputs.getPng();
            SvgFormat svg = outputs.getSvg();

            // Both have the same graphics parameters, so keep in one outputs
            if ( png.getOptions().equals( svg.getOptions() ) )
            {
                returnMe.add( outputs );
            }
            else
            {
                Outputs pngToAdd = outputs.toBuilder()
                                          .clearSvg()
                                          .build();
                Outputs svgToAdd = outputs.toBuilder()
                                          .clearPng()
                                          .build();
                returnMe.add( pngToAdd );
                returnMe.add( svgToAdd );
            }
        }
        else
        {
            returnMe.add( outputs );
        }

        return Collections.unmodifiableCollection( returnMe );
    }

    /**
     * Uncovers the graphic parameters from a description of the outputs. Assumes that all graphics contain the same
     * graphics declarations. Use {@link GraphicsWriter#getOutputsGroupedByGraphicsParameters(List)} to obtain output 
     * groups.
     * 
     * @author james.brown@hydrosolved.com
     */

    static class GraphicsHelper
    {

        /**
         * The template resource name.
         */

        private final String templateResourceName;

        /**
         * The graphics string.
         */

        private final String graphicsString;

        /**
         * The shape of graphic.
         */

        private final GraphicShape graphicShape;

        /**
         * The duration units.
         */

        private final ChronoUnit durationUnits;

        /**
         * Returns a graphics helper.
         *
         * @param outputs a description of the required outputs
         * @return a graphics helper
         */

        static GraphicsHelper of( Outputs outputs )
        {
            return new GraphicsHelper( outputs );
        }

        /**
         * Builds a helper.
         *
         * @param outputs a description of the required outputs
         * @throws NullPointerException if the outputs is null
         */

        private GraphicsHelper( Outputs outputs )
        {
            Objects.requireNonNull( outputs );

            GraphicFormat graphicsOptions = null;

            if ( outputs.hasPng() && outputs.getPng().hasOptions() )
            {
                graphicsOptions = outputs.getPng().getOptions();
            }
            else if ( outputs.hasSvg() && outputs.getSvg().hasOptions() )
            {
                graphicsOptions = outputs.getSvg().getOptions();
            }

            // Default to global type parameter
            GraphicShape innerGraphicShape = GraphicShape.DEFAULT;
            String innerTemplateResourceName = null;
            String innerGraphicsString = null;
            if ( Objects.nonNull( graphicsOptions ) )
            {
                innerGraphicShape = graphicsOptions.getShape();

                if ( !graphicsOptions.getTemplateName().isBlank() )
                {
                    innerTemplateResourceName = graphicsOptions.getTemplateName();
                }

                if ( !graphicsOptions.getConfiguration().isBlank() )
                {
                    innerGraphicsString = graphicsOptions.getConfiguration();
                }
            }

            this.templateResourceName = innerTemplateResourceName;
            this.graphicShape = innerGraphicShape;
            this.graphicsString = innerGraphicsString;
            this.durationUnits = this.getDurationUnitsFromOutputs( outputs );
        }

        /**
         * Uncovers the duration units from an {@link Outputs} message. Throws an exception if more than one duration unit
         * is present. Formats should be written for common graphics parameters. See 
         * {@link GraphicsWriter#getOutputsGroupedByGraphicsParameters(Outputs)}. Returns a default of 
         * {@link ChronoUnit#HOURS} if no units are present.
         * 
         * @param outputs the outputs
         * @return the duration units for graphics writing
         * @throws NullPointerException if the input is null
         * @throws IllegalArgumentException if there are multiple duration units 
         */

        private ChronoUnit getDurationUnitsFromOutputs( Outputs outputs )
        {
            Objects.requireNonNull( outputs );

            ChronoUnit returnMe = ChronoUnit.HOURS;

            if ( outputs.hasPng() && outputs.hasSvg()
                 && outputs.getSvg().hasOptions()
                 && outputs.getPng().hasOptions()
                 && !outputs.getPng().getOptions().getLeadUnit().equals( outputs.getSvg().getOptions().getLeadUnit() ) )
            {
                throw new IllegalArgumentException( "Discovered more than one lead duration unit in the outputs message ("
                                                    + outputs.getPng().getOptions().getLeadUnit()
                                                    + ", "
                                                    + outputs.getSvg().getOptions().getLeadUnit()
                                                    + ")." );
            }

            if ( outputs.hasPng() )
            {
                returnMe = ChronoUnit.valueOf( outputs.getPng().getOptions().getLeadUnit().name() );
            }
            else if ( outputs.hasSvg() )
            {
                returnMe = ChronoUnit.valueOf( outputs.getSvg().getOptions().getLeadUnit().name() );
            }

            return returnMe;
        }

        /**
         * @return the shape of graphic.
         */

        GraphicShape getGraphicShape()
        {
            return this.graphicShape;
        }

        /**
         * @return the graphics string.
         */

        String getGraphicsString()
        {
            return this.graphicsString;
        }

        /**
         * @return the template resource name.
         */

        String getTemplateResourceName()
        {
            return this.templateResourceName;
        }

        /**
         * @return the duration units.
         */

        ChronoUnit getDurationUnits()
        {
            return this.durationUnits;
        }
    }

    /**
     * Hidden constructor.
     * 
     * @param outputs a description of the required outputs
     * @param outputDirectory the directory into which to write
     * @throws NullPointerException if either input is null
     */

    GraphicsWriter( Outputs outputs,
                    Path outputDirectory )
    {
        Objects.requireNonNull( outputs, "Specify a non-null outputs description." );
        Objects.requireNonNull( outputDirectory, "Specify non-null output directory." );

        this.outputs = outputs;
        this.outputDirectory = outputDirectory;
    }
}