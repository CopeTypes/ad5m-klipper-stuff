_INIT_PRINT BED_TEMP=[bed_temperature_initial_layer_single] ; start heating , reset Z offset, home
BED_MESH_CALIBRATE mesh_min={adaptive_bed_mesh_min[0]},{adaptive_bed_mesh_min[1]} mesh_max={adaptive_bed_mesh_max[0]},{adaptive_bed_mesh_max[1]} ALGORITHM=[bed_mesh_algo] PROBE_COUNT={bed_mesh_probe_count[0]},{bed_mesh_probe_count[1]} ADAPTIVE=0 ADAPTIVE_MARGIN=0 ; calibrate in print area
_BEGIN_PRINT TEMP=[nozzle_temperature_initial_layer] ; move out of print area, start circulation, and heat + prime nozzle
