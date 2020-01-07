

%% Plotting
function [figureHandle]=VIRTTAC_Plot_FlightData2Envelope(fig_id,VIRTTAC_SimData,VIRTTAC_PlotProperties,Constants)

NumHighLiftConf = 6;

    load('VIRTTAC_Castor_EnvelopeData.mat');
    if isempty(fig_id),
        figureHandle = figure();
    elseif ((length(fig_id)==1)&&(floor(fig_id)==fig_id)),
        try
            close(fig_id);
        catch
        end
        figureHandle = figure(fig_id);
        clf,
    else
        error('Error in ''VIRTTAC_Plot_Standard_Inputs_Outputs'': the first argument ''fig_id'' shall be empty or a scalar integer representing the desired figure numer.');
    end
    set(figureHandle,'Name','VIRTTAC: Aircraft Envelope','Color','w','Position',[20 100 round(1600*VIRTTAC_PlotProperties.ScalingFactor) round(900*VIRTTAC_PlotProperties.ScalingFactor)]);clf;
    hold on;
    hfa22=[];
    VIRTTAC_Plot.wWidth  = 0.5;%.85;
    VIRTTAC_Plot.hHeight = 0.85;%0.19825;
    VIRTTAC_Plot.hMargin = 0.015;
    VIRTTAC_Plot.xLeft = .145;
    VIRTTAC_Plot.yBottom = 1 - VIRTTAC_Plot.hHeight - 0.08;


    VIRTTAC_PlotProperties.fontSize      = VIRTTAC_PlotProperties.fontSize      * VIRTTAC_PlotProperties.ScalingFactor;
    VIRTTAC_PlotProperties.fontSizeTitle = VIRTTAC_PlotProperties.fontSizeTitle * VIRTTAC_PlotProperties.ScalingFactor;
    VIRTTAC_PlotProperties.RefLineWidth  = VIRTTAC_PlotProperties.RefLineWidth  * VIRTTAC_PlotProperties.ScalingFactor;
    
    %title('VIRTTAC: Longitudinal Control','FontName',fontName,'FontSize',fontSizeTitle);
    %title('VIRTTAC: Lateral Control','FontName',fontName,'FontSize',fontSizeTitle);
    %title('VIRTTAC: Aircraft motion/response','FontName',fontName,'FontSize',fontSizeTitle);
    
%     VIRTTAC_Plot.textWidthCommands = VIRTTAC_Plot.wWidth;
%     annotation('textbox',[ VIRTTAC_Plot.xLeft_Col1of5 ,...
%                            VIRTTAC_Plot.yBottom_Row1of4 + VIRTTAC_Plot.hHeight_OneFourth + VIRTTAC_Plot.hMargin ,...
%                            (VIRTTAC_Plot.xLeft_Col2of5 + VIRTTAC_Plot.wWidth) - VIRTTAC_Plot.xLeft_Col1of5    ,...
%                            .05  ] ,...
%                   'FitBoxToText','off','FitHeightToText','off'       ,...
%                   'HorizontalAlignment','center'                     ,...
%                   'String', 'Controls'                               ,...
%                   'FontName',VIRTTAC_PlotProperties.fontName                  ,...
%                   'FontSize',VIRTTAC_PlotProperties.fontSizeTitle       ,...
%                   'FontWeight','demi','LineStyle','none'              ,...
%                   'BackgroundColor',[.7 .3 .6],'Color','w');
    
%      annotation('textbox',[ VIRTTAC_Plot.xLeft_Col3of5                             ,...
%                             VIRTTAC_Plot.yBottom_Row1of5 + VIRTTAC_Plot.hHeight_OneFifth + VIRTTAC_Plot.hMargin  ,...
%                            (VIRTTAC_Plot.xLeft_Col5of5 + VIRTTAC_Plot.wWidth) - VIRTTAC_Plot.xLeft_Col3of5       ,...
%                            .05  ]                                     ,...
%                   'FitBoxToText','off','FitHeightToText','off'        ,...
%                   'HorizontalAlignment','center'                      ,...
%                   'String', 'Aircraft Response'                       ,...
%                   'FontName', VIRTTAC_PlotProperties.fontName                  ,...
%                   'FontSize', VIRTTAC_PlotProperties.fontSizeTitle             ,...
%                   'FontWeight','demi','LineStyle','none'              ,...
%                   'BackgroundColor',[.3 .7 .6],'Color','w');
%% Data Handling    
    VCAS_kts_mean    = (VIRTTAC_SimData.Outputs.VCAS_ADSP1_ms + VIRTTAC_SimData.Outputs.VCAS_ADSP2_ms + VIRTTAC_SimData.Outputs.VCAS_ADSP3_ms + VIRTTAC_SimData.Outputs.VCAS_ADSP4_ms)/4.0/Constants.kt2mpers;
    
    ThisHighLiftConfiguration = getHighLiftConfiguration(VIRTTAC_SimData.Outputs);
    
    NumberOfDifferentHighLiftConf = length(ThisHighLiftConfiguration);
    
    
%% Plots
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft   VIRTTAC_Plot.yBottom ...
                                                      VIRTTAC_Plot.wWidth          VIRTTAC_Plot.hHeight]);
                    hold on;set(hfa22(end),'Box','on');
                    grid on;
                    set(gca,'layer','top');
                    for ii=1:NumHighLiftConf
                        if ThisHighLiftConfiguration~=(ii-1)
                            h = fill(EnvelopeData(ii).speed,EnvelopeData(ii).alt,[0.8 0.8 0.8]);
                            set(h,'EdgeColor','none');
                        end
                    end
                    for ii=1:NumberOfDifferentHighLiftConf
                        fill(EnvelopeData(ThisHighLiftConfiguration(ii)+1).speed,EnvelopeData(ThisHighLiftConfiguration(ii)+1).alt,[0.5 0.8 0.8]);
                    end
                    
                    plot(VCAS_kts_mean, VIRTTAC_SimData.Outputs.H_GPS_m/Constants.ft2m,'.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth,'MarkerSize',25);
                    xlim([min(EnvelopeData(end).speed)-40,max(EnvelopeData(1).speed)+40]);
                    ylim([0.0,max(EnvelopeData(1).alt)+2000]);
                    ylabel('H_{GPS}   in ft','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    xlabel('V_{CAS}   in kts','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
%                     curLegend = legend('Elevator L (\eta_{LH})','Elevator R (\eta_{RH})');
%                     set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    
    linkaxes(hfa22,'x');
    
end

function HighLiftConfiguration = getHighLiftConfiguration(MeasuredOutputData)

    HighLift_FlapDeflection = [0.0, 5.0, 10.0, 15.0, 25.0, 35.0];
    Flap_mean_deg    = (MeasuredOutputData.Flap_LH_deg + MeasuredOutputData.Flap_RH_deg)/2.0;
    
    jj=1;
    for ii=1:length(HighLift_FlapDeflection)
        Deflection_minus_Nominal = Flap_mean_deg - HighLift_FlapDeflection(ii);
        if ~isempty(find(abs(Deflection_minus_Nominal)<0.1))
            HighLiftConfiguration(jj) = ii-1;
            jj=jj+1;
        end
    end
    
end
   
    
    


    
