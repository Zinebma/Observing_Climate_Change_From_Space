% plot_sss_demo.m — minimal end-to-end demo

% 1) make sure demo data exists
if ~exist('data/demo/demo_sss.nc','file')
    if ~exist('data/demo','dir'), mkdir('data/demo'); end
    generate_demo_nc('data/demo/demo_sss.nc');
end

% 2) run the map
mapmaker('data/demo/demo_sss.nc','varname','sss', ...
         'title','Demo Sea Surface Salinity','crange',[32 38]);

% 3) save a figure to the repo (so README can show it)
if ~exist('figures','dir'), mkdir('figures'); end
saveas(gcf,'figures/demo_sss.png');
