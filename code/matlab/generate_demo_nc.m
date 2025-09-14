function generate_demo_nc(outPath)
%GENERATE_DEMO_NC Create a tiny synthetic NetCDF with lon/lat + SSS.
% Usage: generate_demo_nc('data/demo/demo_sss.nc')

if nargin==0, outPath = 'data/demo/demo_sss.nc'; end
outDir = fileparts(outPath);
if ~exist(outDir,'dir'), mkdir(outDir); end

% small grid so file stays tiny
lon = linspace(-180,180,181);   % 1° spacing
lat = linspace(-90,90,  91);    % 2° spacing
[Lon,Lat] = meshgrid(lon,lat);

% fake SSS field: a smooth pattern + noise (values ~ 32–38 PSU)
sss = 35 + 2*cosd(Lat).*cosd(Lon/2) + 0.2*randn(size(Lon));

% create NetCDF
if exist(outPath,'file'), delete(outPath); end
nccreate(outPath,'lon','Dimensions',{'lon',numel(lon)});
nccreate(outPath,'lat','Dimensions',{'lat',numel(lat)});
nccreate(outPath,'sss','Dimensions',{'lon',numel(lon),'lat',numel(lat)});
ncwrite(outPath,'lon',lon);
ncwrite(outPath,'lat',lat);
ncwrite(outPath,'sss',sss');   % note transpose to match mapmaker expectations
end
