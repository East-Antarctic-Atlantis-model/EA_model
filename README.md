# East Antarctic Atlantis Ecosystem Model

![Map of Antarctica and study area](figures/ea_atlantis_map.png)

## Description

The East Antarctic Atlantis Ecosystem Model is a comprehensive simulation model that represents the ecosystem dynamics of the East Antarctic region. This model incorporates various environmental factors, biological interactions, and human uses to simulate the functioning and sustainability of the East Antarctic ecosystem.

The model consists of 29 boxes (i.e., 29 polygons with max. 10 depth layers + sediment layer) and 29 functional groups. The physical conditions are driven by ACCESS-OM2-CICE outputs (usage validated by Fierro-Arcos et al. 2023: https://linkinghub.elsevier.com/retrieve/pii/S0079661123000927) 

## Features

- Simulates the interactions between key components of the East Antarctic ecosystem, including marine life, land-based organisms, and climate factors.
- Provides insights into the population dynamics, food web relationships, and species distributions within the East Antarctic ecosystem.
- Enables the exploration of different scenarios and the assessment of potential impacts on the ecosystem due to climate change, fishing activities, or other human interventions.

## Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/East-Antarctic-Atlantis-model/EA_model.git
   ```

2. Install the required dependencies:

   ```shell
    Check Atlantis confluence page
   ```

3. Download the necessary input data:
  All the data needed to run the model is contained in this repository.

## How do you run EastAnt-Atlantis?
You will need the following files in order to run the model:
- **Run.sh**: .sh file with all input .prm files and initial conditions (.nc), as well as names for output folder and files; used to run model.
- **AntarcticGroups.csv**: file containing functional group definitions and behaviour switches (e.g., if a group migrates outside of model, performs DMV, is a primary producer/predator...).
- **EA_migrations.csv**: file containing information on migrating functional groups.
- **initial_conditions.nc**: .nc file containing initial conditions of the model, such as the characterisation of different functional groups, initial biomass, and potentialy physical forcing conditions if not provided in other ways (see EA_run.prm and extra forcing files, below).
- **EA_run.prm**: parameter file which switches on/off certain submodels, tracer tracking, checks for debugging and calibrating the model; also used to set the model run time and output frequency.
- **EA_force.prm**: parameter file which specifies which files contain forcings (e.g., salinity, temperature, precipitation, solar radiation, fishing, sea ice...).
- **EA_physics.prm**: parameter file for physical drivers (scaling parameters, temp/sal ranges for biology-related calcs, etc.).
- **EA_biol.prm**: parameter file for biological interactions and life history conditions, reproduction, feeding, distribution in the water column, primary production, etc.
- Extra **EA_forcings.nc** files: depending on EA_force.prm parameters, you will need extra .nc files to provide forcings to the model.

## Contributing

Contributions to the Antarctic Atlantis Ecosystem Model are welcome! If you have ideas for improvements, new features, or bug fixes, please submit a pull request. Ensure that your code adheres to the project's coding style and guidelines.

## License

Not sure what Licence here

## Acknowledgments

We would like to express our gratitude to the following organizations and researchers for their contributions to the understanding of the East Antarctic ecosystem:

- Australian Antarctic division (AAD)
- Institute for Marine and Antarctic Studies (IMAS)
- Commonwealth Scientific and Industrial Research Organisation (CSIRO)

## Contact

For any questions or inquiries, please use github.
