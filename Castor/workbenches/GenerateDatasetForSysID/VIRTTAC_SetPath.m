% This script sets the required paths for using VIRTTAC relatively to the
% current script's location.
% 
% In order to prevent conflict between several VIRTTAC copies on your 
% filesystem, do not save these paths into your MATLAB default path!
% Instead, execute this script at the beginning of your scripts or working 
% session.

function VIRTTAC_SetPath(disable_version_warning)

if nargin<1
    disable_version_warning = 0;
end

ThisScriptName = mfilename();
FullPathToThisScript = mfilename('fullpath');
DirectoryOfThisScriptWithFilesep = FullPathToThisScript(1:end-length(ThisScriptName));

idx_fileseps = findstr(DirectoryOfThisScriptWithFilesep,filesep);

if length(idx_fileseps)<=2
    error('Something is wrong with your VIRTTAC installation.');
else
    DirectoryOfVIRTTACRoot = DirectoryOfThisScriptWithFilesep(1:idx_fileseps(end-2));
end

addpath(genpath( [DirectoryOfVIRTTACRoot,'init']          ));
addpath(genpath( [DirectoryOfVIRTTACRoot,'plots']         ));
addpath(genpath( [DirectoryOfVIRTTACRoot,'maneuvers']     ));
addpath(genpath( [DirectoryOfVIRTTACRoot,'tools']         ));
addpath(genpath( [DirectoryOfVIRTTACRoot,'version_infos'] ));
addpath(genpath( [DirectoryOfVIRTTACRoot,'model_libraries']));


% % Check the current platform and MATLAB version
[platform,maxsize,endian]=computer();
v_Simulink = ver('Simulink');

if isempty(v_Simulink)
    error('It seems that Simulink is not part of your MATLAB installation. VIRTTAC requires Simulink => stopping!');
elseif (length(v_Simulink)>1)
    error('Multiple entries found for Simulink when calling ''ver(''Simulink'')''!');
end



versionCorrespondence = VIRTTAC_GetListOfSupportedPlatformAndVersions();

platform_found = 0;
for iii=1:length(versionCorrespondence)
    if strcmp(versionCorrespondence(iii).Platform{1}, platform)
        platform_found = iii;
        break;
    end
end

if (platform_found==0)
    error(['Unknown platform ''',platform,''' was found! Please do not hesitate to submit details on your platform to the VIRTTAC contact email address: VIRTTAC@dlr.de to help grasp the needs of the community!']);
end

if isempty(versionCorrespondence(platform_found).SupportedVersions)
    error(['Unfortunately, the platform ''',versionCorrespondence(platform_found).Platform{1},...
           ''' (',versionCorrespondence(platform_found).Platform{3},') is not supported by VIRTTAC => no possibility to recover. Please do not hesitate to submit details on your platform to the VIRTTAC contact email address: VIRTTAC@dlr.de to help grasp the needs of the community!'])
end

% Is the current Simulink version supported on the current platform?
idxSV=[];
for jjj=1:size(versionCorrespondence(platform_found).SupportedVersions,1)
    if (strfind(v_Simulink.Version,versionCorrespondence(platform_found).SupportedVersions{jjj,1}) == 1)
        idxSV = jjj;
        break;
    end
end

if ( (isempty(idxSV)) && (~disable_version_warning) )
    % version was not found => warning if not inhibited
    SupportedVersionList = '\n';
    for jjj=1:size(versionCorrespondence(platform_found).SupportedVersions,1)
        SupportedVersionList = [SupportedVersionList,'- ',...
                                   versionCorrespondence(platform_found).SupportedVersions{jjj,1},...
                              ' (',versionCorrespondence(platform_found).SupportedVersions{jjj,2},')\n'];
    end
    warning('Simulink:VersionWarning',...
       ['Your current version of Simulink is ',v_Simulink.Version, ' ',v_Simulink.Release,' on ',versionCorrespondence(platform_found).Platform{3},'.',...
        '\nThis version is not officially supported and VIRTTAC was not tested on it. ',...
        'If you are experiencing version-related problems, please report them to us ',...
        'along with your platform and MATLAB/Simulink version via the email address: ',...
        'VIRTTAC@dlr.de to help us making VIRTTAC as widely available as possible!\n\n',...
        ...
        'Supported versions for the ''', versionCorrespondence(platform_found).Platform{3} ,''' platform are: ',SupportedVersionList, '\n']);

end



end

