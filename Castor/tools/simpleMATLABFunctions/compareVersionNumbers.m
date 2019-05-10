function result=compareVersionNumbers(v1str,v2str)

    [vMajor1,vMinor1] = sscanf(v1str,'%d.%d');
    [vMajor2,vMinor2] = sscanf(v2str,'%d.%d');

    if vMajor2>vMajor1,
        result=1;
        return;
    elseif vMajor2<vMajor1,
        result=-1;
        return;
    else % same major version number => we look at the minor version number
        if vMinor2>vMinor1,
            result=1;
            return;
        elseif vMinor2<vMinor1,
            result=-1;
            return; 
        else
            result=0;
            return
        end
    end

end