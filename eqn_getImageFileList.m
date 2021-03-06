function filelist = eqn_getImageFileList(t_beg, t_end, PATH, STATION)
% 
% 

daysInMatlabTime = (fix(t_beg):fix(t_end))';

N = length(daysInMatlabTime);

dateStrings = datestr(daysInMatlabTime, 'yyyy_mm_dd');

% initialize filelist
filelist = cell(N,1);

for i=1:length(daysInMatlabTime)
    target = [PATH, STATION, '\', dateStrings(i, 1:4), '\', ...
        'IMAGE_', STATION, '_', dateStrings(i,:), '.txt'];
    filelist{i,1} = target;
end

end