function versionCorrespondence=VIRTTAC_GetListOfSupportedPlatformAndVersions()

versionCorrespondence( 1).Platform = {'PCWIN','win32', 'Windows 32bit'};
versionCorrespondence( 1).SupportedVersions = {'7.0','R2007b';...
                                               '7.8','R2011b';...
											   '8.0','R2012b'};

versionCorrespondence( 2).Platform = {'PCWIN64','win64', 'Windows 64bit'};
versionCorrespondence( 2).SupportedVersions = {'7.0','R2007b';...
                                               '7.8','R2011b';...
											   '8.0','R2012b';...
											   '8.1','R2013a';...
                                               '8.6','R2015b';...
											   '9.0','R2017b';...
											   '9.1','R2018a';...
                                               '9.2','R2018b'};
                                              
versionCorrespondence( 3).Platform = {'GLNX86' ,'linux32' , 'Linux x86 32bit'};
versionCorrespondence( 3).SupportedVersions = {};

versionCorrespondence( 4).Platform = {'GLNXA64','linux64' , 'Linux x64 AMD 64bit'};
versionCorrespondence( 4).SupportedVersions = {'9.2','R2018b'};

versionCorrespondence( 5).Platform = {'MACI64' ,'maci64'   , 'Mac Intel 64bit'};
versionCorrespondence( 5).SupportedVersions = {'9.2','R2018b'};

versionCorrespondence( 6).Platform = {'MACI'   ,'maci'     , 'Mac Intel 32bit'};
versionCorrespondence( 6).SupportedVersions = {};

versionCorrespondence( 7).Platform = {'MAC'    ,'mac'      , 'Mac PowerPC'};
versionCorrespondence( 7).SupportedVersions = {};

versionCorrespondence( 8).Platform = {'ALPHA'  ,''        , 'Compaq Alpha (OSF1)'};
versionCorrespondence( 8).SupportedVersions = {};

versionCorrespondence( 9).Platform = {'HP700'  ,''        , 'HP 9000/700 (HP-UX 10.20)'};
versionCorrespondence( 9).SupportedVersions = {};

versionCorrespondence(10).Platform = {'HPUX'   ,''        , 'HP PA-RISC (HP-UX 11.00)'};
versionCorrespondence(10).SupportedVersions = {};

versionCorrespondence(11).Platform = {'IBM_RS' ,''        , 'IBM RS6000 workstation (AIX)'};
versionCorrespondence(11).SupportedVersions = {};

versionCorrespondence(12).Platform = {'SGI'    ,''        , 'Silicon Graphics (IRIX/IRIX64)'};
versionCorrespondence(12).SupportedVersions = {};

versionCorrespondence(13).Platform = {'SOL2'   ,''        , 'Sun Solaris 2 SPARC workstation'};
versionCorrespondence(13).SupportedVersions = {};

versionCorrespondence(14).Platform = {'GLNXI64',''        , 'Linux on Intel Itanium2'};
versionCorrespondence(14).SupportedVersions = {};

versionCorrespondence(15).Platform = {'SOL64'  ,''        , 'Sun Solaris on SPARC'};
versionCorrespondence(15).SupportedVersions = {};

end