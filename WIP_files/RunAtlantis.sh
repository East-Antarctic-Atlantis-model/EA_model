#!/bin/bash
find /app/model -type f -not -path "/app/model/output_EA_*.*"| xargs dos2unix

# Running different Atlantis configurations: change output folder name (it will get overwritten if running in Docker) and any input files!!
#valgrind --log-file=valgrind%p.log --track-origins=yes --leak-check=full --track-fds=yes --show-reachable=yes atlantisMerged -i INIT_VMPA_Jan2015.nc 0 -o outputSETAS.nc -r VMPA_setas_run_fishing_F_Trunk.prm -f VMPA_setas_force_fish_Trunk.prm -p VMPA_setas_physics.prm -b VMPA_setas_biol_fishing_Trunk.prm -h VMPA_setas_harvest_F_Trunk.prm  -s SETasGroupsDem.csv -q SETasFisheries.csv -d outputFolder

#atlantisMerged -i final_with_ice_input_v2.nc 0 -o output.nc -r EA_run.prm -f EA_force.prm -p EA_physics.prm -b EA_biol_nd_2.prm -h EA_harvest_nofishing.prm -s AntarcticGroups_v2.csv -d output_EA_biol_nd_SBnoDET -m EA_migrations.csv

atlantisMerged -i final_with_ice_input_v2.nc 0 -o output_f_.nc -r EA_run.prm -f EA_force.prm -p EA_physics.prm -b EA_biol_newdiet_v30.prm -h EA_harvest_nofishing.prm -s AntarcticGroups_v2.csv -d output_EA_130923 -m EA_migrations.csv

#atlantisMerged -i ncgen_final_with_ice_input_v3.nc 0 -o output_f_.nc -r EA_run.prm -f EA_force.prm -p EA_physics.prm -b EA_biol_newdiet.prm -h EA_harvest_nofishing.prm -s AntarcticGroups_v2.csv -d output_EA_20230620_newdiet_test_v3 -m EA_migrations.csv

#atlantisMerged -i final_with_ice_input_v2.nc 0 -o output.nc -r EA_run.prm -f EA_force.prm -p EA_physics.prm -b EA_biol_newdiet_E_KR_100.prm -h EA_harvest_nofishing.prm -s AntarcticGroups_v2.csv -d output_EA_newdiet_E_KR_100 -m EA_migrations.csv
