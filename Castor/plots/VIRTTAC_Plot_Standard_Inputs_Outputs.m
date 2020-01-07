

%% Plotting
function [figureHandle]=VIRTTAC_Plot_Standard_Inputs_Outputs(fig_id,VIRTTAC_SimData,VIRTTAC_PlotProperties)
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
    set(figureHandle,'Name','VIRTTAC: Aircraft motion/response','Color','w','Position',[20 100 round(1600*VIRTTAC_PlotProperties.ScalingFactor) round(900*VIRTTAC_PlotProperties.ScalingFactor)]);clf;
    hold on;
    hfa22=[];
    VIRTTAC_Plot.wWidth  = 0.148;%.85;
    VIRTTAC_Plot.hHeight_OneFourth = 0.2;%0.19825;
    VIRTTAC_Plot.hHeight_OneFifth = 0.151;
    VIRTTAC_Plot.hMargin = 0.015;
    VIRTTAC_Plot.xLeft_Col1of5 = .045;
    VIRTTAC_Plot.xLeft_Col2of5 = .23;
    VIRTTAC_Plot.xLeft_Col3of5 = .45;
    VIRTTAC_Plot.xLeft_Col4of5 = .64;
    VIRTTAC_Plot.xLeft_Col5of5 = .83;
    VIRTTAC_Plot.yBottom_Row1of5 = 1 - VIRTTAC_Plot.hHeight_OneFifth - 0.08;
    VIRTTAC_Plot.yBottom_Row2of5 = VIRTTAC_Plot.yBottom_Row1of5 - VIRTTAC_Plot.hHeight_OneFifth - VIRTTAC_Plot.hMargin;
    VIRTTAC_Plot.yBottom_Row3of5 = VIRTTAC_Plot.yBottom_Row2of5 - VIRTTAC_Plot.hHeight_OneFifth - VIRTTAC_Plot.hMargin;
    VIRTTAC_Plot.yBottom_Row4of5 = VIRTTAC_Plot.yBottom_Row3of5 - VIRTTAC_Plot.hHeight_OneFifth - 3 * VIRTTAC_Plot.hMargin;
    VIRTTAC_Plot.yBottom_Row5of5 = VIRTTAC_Plot.yBottom_Row4of5 - VIRTTAC_Plot.hHeight_OneFifth - VIRTTAC_Plot.hMargin;
    
    VIRTTAC_Plot.yBottom_Row1of4 = 1 - VIRTTAC_Plot.hHeight_OneFourth-0.08;
    VIRTTAC_Plot.yBottom_Row2of4 = VIRTTAC_Plot.yBottom_Row1of4 - VIRTTAC_Plot.hHeight_OneFourth - VIRTTAC_Plot.hMargin;
    VIRTTAC_Plot.yBottom_Row3of4 = VIRTTAC_Plot.yBottom_Row2of4 - VIRTTAC_Plot.hHeight_OneFourth - VIRTTAC_Plot.hMargin;
    VIRTTAC_Plot.yBottom_Row4of4 = VIRTTAC_Plot.yBottom_Row3of4 - VIRTTAC_Plot.hHeight_OneFourth - VIRTTAC_Plot.hMargin;


    VIRTTAC_PlotProperties.fontSize      = VIRTTAC_PlotProperties.fontSize      * VIRTTAC_PlotProperties.ScalingFactor;
    VIRTTAC_PlotProperties.fontSizeTitle = VIRTTAC_PlotProperties.fontSizeTitle * VIRTTAC_PlotProperties.ScalingFactor;
    VIRTTAC_PlotProperties.RefLineWidth  = VIRTTAC_PlotProperties.RefLineWidth  * VIRTTAC_PlotProperties.ScalingFactor;
    
    %title('VIRTTAC: Longitudinal Control','FontName',fontName,'FontSize',fontSizeTitle);
    %title('VIRTTAC: Lateral Control','FontName',fontName,'FontSize',fontSizeTitle);
    %title('VIRTTAC: Aircraft motion/response','FontName',fontName,'FontSize',fontSizeTitle);
    
    VIRTTAC_Plot.textWidthCommands = VIRTTAC_Plot.wWidth;
    annotation('textbox',[ VIRTTAC_Plot.xLeft_Col1of5 ,...
                           VIRTTAC_Plot.yBottom_Row1of4 + VIRTTAC_Plot.hHeight_OneFourth + VIRTTAC_Plot.hMargin ,...
                           (VIRTTAC_Plot.xLeft_Col2of5 + VIRTTAC_Plot.wWidth) - VIRTTAC_Plot.xLeft_Col1of5    ,...
                           .05  ] ,...
                  'FitBoxToText','off','FitHeightToText','off'       ,...
                  'HorizontalAlignment','center'                     ,...
                  'String', 'Controls'                               ,...
                  'FontName',VIRTTAC_PlotProperties.fontName                  ,...
                  'FontSize',VIRTTAC_PlotProperties.fontSizeTitle       ,...
                  'FontWeight','demi','LineStyle','none'              ,...
                  'BackgroundColor',[.7 .3 .6],'Color','w');
    
     annotation('textbox',[ VIRTTAC_Plot.xLeft_Col3of5                             ,...
                            VIRTTAC_Plot.yBottom_Row1of5 + VIRTTAC_Plot.hHeight_OneFifth + VIRTTAC_Plot.hMargin  ,...
                           (VIRTTAC_Plot.xLeft_Col5of5 + VIRTTAC_Plot.wWidth) - VIRTTAC_Plot.xLeft_Col3of5       ,...
                           .05  ]                                     ,...
                  'FitBoxToText','off','FitHeightToText','off'        ,...
                  'HorizontalAlignment','center'                      ,...
                  'String', 'Aircraft Response'                       ,...
                  'FontName', VIRTTAC_PlotProperties.fontName                  ,...
                  'FontSize', VIRTTAC_PlotProperties.fontSizeTitle             ,...
                  'FontWeight','demi','LineStyle','none'              ,...
                  'BackgroundColor',[.3 .7 .6],'Color','w');
    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col1of5   VIRTTAC_Plot.yBottom_Row1of4 ...
                                                      VIRTTAC_Plot.wWidth          VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on;set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Elevator_LH_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Elevator_RH_deg,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\eta_{L} , \eta_{R}   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Elevator L (\eta_{LH})','Elevator R (\eta_{RH})');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col1of5   VIRTTAC_Plot.yBottom_Row2of4 ...
                                                      VIRTTAC_Plot.wWidth          VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time,VIRTTAC_SimData.Outputs.HorizStabil_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 4;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('i_H   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Trimmable Hor. Stab.');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col1of5    VIRTTAC_Plot.yBottom_Row3of4 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Flap_LH_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Flap_RH_deg,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    set(gca,'YLim',[-2,37],'YTick',[0 5 10 15 25 35],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('Flaps   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Left','Right');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
     
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col1of5    VIRTTAC_Plot.yBottom_Row4of4 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, 100*VIRTTAC_SimData.Outputs.N1_LH_Sen_ADM,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, 100*VIRTTAC_SimData.Outputs.N1_RH_Sen_ADM,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    set(gca,'YLim',[-2,103],'YTick',0:20:100,'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    xlabel('Time  in  s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('N1_{L} , N1_{R}   in %','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Eng. L Fan Speed','Eng. R Fan Speed');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
     
                    
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col2of5     VIRTTAC_Plot.yBottom_Row1of4 ...
                                                      VIRTTAC_Plot.wWidth            VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Aileron_LH_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Aileron_RH_deg,'r','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\xi_{LH} , \xi_{RH}   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Aileron L (\xi_{LH})','Aileron R (\xi_{RH})');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
   
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col2of5    VIRTTAC_Plot.yBottom_Row2of4 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_RH1_meas_deg,'b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_RH2_meas_deg,'r','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_RH3_meas_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_RH4_meas_deg,'m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_RH5_meas_deg,'g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('Right Spoilers   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('\delta_{R1}','\delta_{R2}','\delta_{R3}','\delta_{R4}','\delta_{R5}');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
                    
                    
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col2of5    VIRTTAC_Plot.yBottom_Row3of4 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_LH1_meas_deg,'b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_LH2_meas_deg,'r','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_LH3_meas_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_LH4_meas_deg,'m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Spoiler_LH5_meas_deg,'g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('Left Spoilers   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('\delta_{L1}','\delta_{L2}','\delta_{L3}','\delta_{L4}','\delta_{L5}');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
     
                   
                   
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col2of5    VIRTTAC_Plot.yBottom_Row4of4 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFourth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Rudder_deg,'k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    xlabel('Time  in  s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\zeta   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('Rudder');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
    
    
    
 
    
    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col3of5    VIRTTAC_Plot.yBottom_Row1of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.p_IRU1_deg_per_s,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.p_IRU2_deg_per_s,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.p_IRU3_deg_per_s,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('p   in deg/s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col4of5    VIRTTAC_Plot.yBottom_Row1of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.q_IRU1_deg_per_s,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.q_IRU2_deg_per_s,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.q_IRU3_deg_per_s,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('q   in deg/s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col5of5    VIRTTAC_Plot.yBottom_Row1of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.r_IRU1_deg_per_s,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.r_IRU2_deg_per_s,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.r_IRU3_deg_per_s,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('r   in deg/s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col3of5    VIRTTAC_Plot.yBottom_Row2of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Phi_IRU1_deg,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Phi_IRU2_deg,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Phi_IRU3_deg,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\Phi   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col4of5    VIRTTAC_Plot.yBottom_Row2of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Theta_IRU1_deg,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Theta_IRU2_deg,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Theta_IRU3_deg,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\Theta   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col5of5    VIRTTAC_Plot.yBottom_Row2of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Psi_IRU1_deg,'-g','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Psi_IRU2_deg,'-.k','Linewidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.Psi_IRU3_deg,'--m','Linewidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 2;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\Psi   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col3of5     VIRTTAC_Plot.yBottom_Row3of5 ...
                                                      VIRTTAC_Plot.wWidth            VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ax_IRU1_g,'-g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ax_IRU2_g,'-.k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ax_IRU3_g,'--m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 0.5;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('a_x   in g','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col4of5    VIRTTAC_Plot.yBottom_Row3of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ay_IRU1_g,'-g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ay_IRU2_g,'-.k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.ay_IRU3_g,'--m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 0.5;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('a_y   in g','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col5of5    VIRTTAC_Plot.yBottom_Row3of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.az_IRU1_g,'-g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.az_IRU2_g,'-.k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth); 
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.az_IRU3_g,'--m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 0.5;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('a_z   in g','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('IRU1','IRU2','IRU3');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col3of5    VIRTTAC_Plot.yBottom_Row4of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.VCAS_ADSP1_ms,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.VCAS_ADSP2_ms,':k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.VCAS_ADSP3_ms,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.VCAS_ADSP4_ms,'g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 10;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('V_{CAS}   in m/s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1','ADSP2','ADSP3','ADSP4');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col4of5    VIRTTAC_Plot.yBottom_Row4of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.alpha_ADSP1_deg,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.alpha_ADSP2_deg,':k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.alpha_ADSP3_deg,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.alpha_ADSP4_deg,'g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\alpha   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1','ADSP2','ADSP3','ADSP4');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col5of5    VIRTTAC_Plot.yBottom_Row4of5 ... 
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.beta_ADSP1_deg,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.beta_ADSP2_deg,':k','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.beta_ADSP3_deg,'-.m','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.beta_ADSP4_deg,'g','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 0.5;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'XTickLabel',[],'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('\beta   in deg','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1','ADSP2','ADSP3','ADSP4');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col3of5    VIRTTAC_Plot.yBottom_Row5of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.H_pStat1_m,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 30;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('H_{baro}   in m','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    xlabel('Time  in  s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col4of5   VIRTTAC_Plot.yBottom_Row5of5 ...
                                                      VIRTTAC_Plot.wWidth          VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.T_TStat1_K -273.15,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 3;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('T_{stat}   in ^\circC','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize,'Interpreter','Tex');
                    xlabel('Time  in  s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
    hfa22(end+1) =  subplot('Position',[VIRTTAC_Plot.xLeft_Col5of5    VIRTTAC_Plot.yBottom_Row5of5 ...
                                                      VIRTTAC_Plot.wWidth           VIRTTAC_Plot.hHeight_OneFifth]);
                    hold on; set(hfa22(end),'Box','on');
                    plot(VIRTTAC_SimData.Outputs.Time, VIRTTAC_SimData.Outputs.p_pStat1_Pa*0.01,'--b','LineWidth',VIRTTAC_PlotProperties.RefLineWidth);
                    y_lims = get(gca,'YLim');
                    min_y_scale = 1e1;
                    if ( (y_lims(2)-y_lims(1))<min_y_scale ), 
                        y_lims2 = mean(y_lims) + (y_lims-mean(y_lims))*min_y_scale/(y_lims(2)-y_lims(1)); 
                        set(gca,'YLim',y_lims2);
                    end
                    set(gca,'FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    ylabel('p_{stat}   in hPa','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    xlabel('Time  in  s','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    curLegend = legend('ADSP1');
                    set(curLegend,'Location','Best','FontName',VIRTTAC_PlotProperties.fontName,'FontSize',VIRTTAC_PlotProperties.fontSize);
                    grid on,
                    
                   
    linkaxes(hfa22,'x');
    
   
    
    


    
