# SmartFit

SmartFit is a fitness app that help to manage and improve user’s workout habit.

## User Stories

The following **required** functionality is completed:

- [X] Sign in authorization (FIREBASE, Google Auth) (April 19)
- [ ] Customizable goals (represented as mascot) based on a user preference (April 19)
- [ ] Customized workout based on their fitness goals← simplex algorithm (Start some before April 19)
- [ ] Select certain machines to use (Life Fitness API) Life Fitness API
- [ ] Measure user’s workouts stats (HealthKit)
- [ ] View graphical history/stats timeline about their progress (APPLE FITNESS FRAMEWORK)

The following **optional** features are implemented:

- [ ] Notification for workout reminder
- [ ] A personal “mascot” (avatar?)
- [ ] Achievement for different goals
- [ ] Locate nearest gym with certain machines
- [ ] Order for personal trainer
- [ ] Instruction of using machines (use api to show a video tutorial) 
- [ ] Diet tracker and nutrition help

User:
  email (google?)
  name
  password
  uid
  PreferenceObject
  StatsObject
  user_masot (optional)

-- Encapsulated as a PreferenceObject --
Fitness Preference:
  -- represented by integers for size --
  chest
  legs (quads, hamstrings, hips)
  arms (biceps, triceps, shoulders)
  back (lats, rhomboids)
  abs

  goal_weight (optional)
  goal_time (optional)

-- Encapsulated as a StatsObject --
Workout Statistics
  -- these fields sum the stats from each MachineStatsObject --
  DataTracker total_stats // sum of all stats from MachineStats array
  MachineStats[] : MachineStatsObject

-- encapsulated as a MachineStatsObject --
MachineStats:
  --each machine has a DataTracker --
  DataTrackerObject

-- tracks below fields --
DataTracker
  weight
  heart_rate
  calories_burned
  time_duration
  steps
