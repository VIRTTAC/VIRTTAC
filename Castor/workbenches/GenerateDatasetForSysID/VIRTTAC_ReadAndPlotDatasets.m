% Name:    VIRTTAC_ReadAndPlotDatasets.m
% Type:    MATLAB function
% Purpose: Provide an example for load an already generated dataset for  
%          analysis (here the each simulation is loaded, plotted, and 
%          exported as PDF and as PNG file)
%
% Arguments: - "datasetNames" (optinal: string or cell-array of string)
%              Name(s) of the subfolder(s) of the "datasets" folder that
%              should be processed
%              If no argument is provided, the last subfolder (which should
%              usually be the newest one, as they are named using the date 
%              and time at the beginning of the dataset generation process)
%              is processed.
% 
% License: MIT

function VIRTTAC_ReadAndPlotDatasets(datasetNames)

switch nargin
    case 0
        % here we should processed the last folder
        files = dir(['datasets',filesep,'*_*_*_*h*m*s*']);
        if isempty(files)
            error('Could not find any dataset!');
        else
            listOfDatasets = sort({files(:).name});
            datasetNames = listOfDatasets(end);
        end
    case 1
        % regular case: we just check the datatype of the passed argument
        if isa(datasetNames,'cell')
            % nothing to do
        elseif isa(datasetNames,'char')
            % if we got a string we wrap it in a cell array with only 1 element
            datasetNames = {datasetNames};
        else
            error(['Parameter ''datasetNames'' must be either a string',...
                   ' or a cell array of strings']);
        end
    otherwise
        error(['Error using function VIRTTAC_ReadAndPlotDatasets: ',...
               'this function expects either 0 or 1 argument!']);
end

% % define some properties for the plots
VIRTTAC_PlotProperties.fontName      = 'Helvetica';
VIRTTAC_PlotProperties.fontSize      = 11;
VIRTTAC_PlotProperties.fontSizeTitle = VIRTTAC_PlotProperties.fontSize + 9;
VIRTTAC_PlotProperties.RefLineWidth  = 1.5;
VIRTTAC_PlotProperties.ScalingFactor = 1.0;



for ii=1:length(datasetNames)

    currentDirectoryName = datasetNames{ii};
    fprintf('Processing dataset ''%s''...\n',currentDirectoryName);
    
    if (exist(['datasets',filesep,currentDirectoryName],'dir')~=7)
        warning('VIRTTAC:DatasetNotFound',sprintf('Dataset ''%s'' was not found!',currentDirectoryName));
        continue
    end
    
    files = dir(['datasets',filesep,currentDirectoryName,filesep,'TestPoint_*.mat']);

    if isempty(files)
        warning('VIRTTAC:EmptyDataset',['No test point could be found in the dataset ''',currentDirectoryName,'''!']);
        continue
    end

    if ~exist(['datasets',filesep,currentDirectoryName,filesep,'pdf'],'dir')
        mkdir(['datasets',filesep,currentDirectoryName,filesep,'pdf']);
    end
    if ~exist(['datasets',filesep,currentDirectoryName,filesep,'png'],'dir')
        mkdir(['datasets',filesep,currentDirectoryName,filesep,'png']);
    end

    for jj=1:length(files),
        fprintf('Processing test point #%d from %d\n',jj,length(files));
        load(['datasets',filesep,currentDirectoryName,filesep,files(jj).name]);

        % % this function call generates the VIRTTAC "envelope plot"
        EnvPlot_handle = VIRTTAC_Plot_FlightData2Envelope(21 ...% figure number
                                          ,VIRTTAC_SimData,VIRTTAC_PlotProperties,Constants);

        % this function call generates the VIRTTAC "standard output plot"
        stdPlot_handle = VIRTTAC_Plot_Standard_Inputs_Outputs(22 ...% figure number
                                          ,VIRTTAC_SimData,VIRTTAC_PlotProperties);
        % 
        % % export that plot to a landscape PDF file
        set(stdPlot_handle,...
              'PaperOrientation', 'portrait', ...
              'PaperSize', VIRTTAC_PlotProperties.ScalingFactor*2.8*[16 9],...
              'Units' , 'centimeters',...
              'PaperPosition',VIRTTAC_PlotProperties.ScalingFactor*2.8*[0,0,16,9]);
        print(stdPlot_handle,['datasets',filesep,currentDirectoryName,filesep,'pdf',filesep,'VIRTTAC_',files(jj).name(1:end-4),'_StdInputOutputPlot.pdf'],'-dpdf');
        print(stdPlot_handle,['datasets',filesep,currentDirectoryName,filesep,'png',filesep,'VIRTTAC_',files(jj).name(1:end-4),'_StdInputOutputPlot.png'],'-dpng');
        set(EnvPlot_handle,...
              'PaperOrientation', 'portrait', ...
              'PaperSize', VIRTTAC_PlotProperties.ScalingFactor*2.8*[16 9],...
              'Units' , 'centimeters',...
              'PaperPosition',VIRTTAC_PlotProperties.ScalingFactor*2.8*[0,0,16,9]);
        print(EnvPlot_handle,['datasets',filesep,currentDirectoryName,filesep,'pdf',filesep,'VIRTTAC_',files(jj).name(1:end-4),'_EnvelopePlot.pdf'],'-dpdf');
        print(EnvPlot_handle,['datasets',filesep,currentDirectoryName,filesep,'png',filesep,'VIRTTAC_',files(jj).name(1:end-4),'_EnvelopePlot.png'],'-dpng');
    end
    
end




end