# README #

This Q-Learning code for MATLAB has been written by Ioannis Makris and Andrew Chalikiopoulos. It trains an agent to find the shortest way through a 25x25 maze. Following convergence of the algorithm, MATLAB will print out the shortest path to the goal and will also create three graphs to measure the performance of the agent. These are:

1. Figure 1: Double y plot of Cumulative Reward/Steps taken vs Episode and Steps Taken vs Episode. 
2. Figure 2: Standard plot of Cumulative Reward/Steps taken vs Episode.
3. Figure 3. Standard plot of Steps Taken vs Episode.


### How do I get set up? ###

This repository contains 9 files. These are: 

1. RandomPermutation.m
2. ReinforcementLearning_RandomPol.m
3. ReinforcementLearning.m
4. ReinforcementLearningGreedy.m
5. ReinforcementLearningUpdateR.m
6. RewardMatrix25.m
7. RewardMatrix100.m
8. RewardMatrixNoPunishment.csv
9. RewardMatrixPunishment.csv

The following files were used for testing and should not be used:

1. ReinforcementLearning.m
2. RewardMatrix25.m

The following scenarios, which can be run with this code:

1. Q-Learning with no punishment applying the epislon greedy selection policy. The agent cannot get into a wall in this scenario and the only reward given is 1000 if the goal is found. To set this up, it is necessary ensure that MATLAB reads the RewardMatrixNoPunishment.csv. This can be set up in the RewardMatrix100.m file. It is then possible to manipulate the learning rate and the discount factor in the ReinforcementLearningGreedy.m file and to run the code from there. 

2. Q-Learning with no punishment, applying the random selection policy. The agent cannot get into a a wall state in this scenario and the only reward given is 1000 if the goal is found. To set this up, it is necessary ensure that MATLAB reads the RewardMatrixNoPunishment.csv. This can be set up in the RewardMatrix100.m file. It is then possible to manipulate the learning rate and the discount factor in the ReinforcementLearning_RandomPol.m file and to run the code from there. 

3. Q-Learning with punishment for going into a forbidden state applying the epsilon greedy selection policy. The agent is allowed to go into a wall state and receives -50 punishment for doing so. Again, the only reward given is 1000 if the goal is found. To set this up, it is necessary ensure that MATLAB reads the RewardMatrixPunishment.csv. This can be set up in the RewardMatrix100.m file. It is then possible to manipulate the learning rate and the discount factor in the ReinforcementLearningGreedy.m file and to run the code from there. 

4. Q-Learning with punishment for going into a forbidden state applying the epsilon greedy selection policy. Furthermore, to make this environment dynamic, once the agent has knocked down a wall, the reward will change to 0 as the wall is not there anymore. The reward will remain 0 for any subsequent episode completed by the agent. Again, the only reward given is 1000 if the goal is found. To set this up, it is necessary ensure that MATLAB reads the RewardMatrixPunishment.csv. This can be set up in the RewardMatrix100.m file. It is then possible to manipulate the learning rate and the discount factor in the ReinforcementLearningUpdateR.m file and to run the code from there. 

### Contribution guidelines ###

This code is build on the Q-Learning example code by Kardi Teknomo, which can be found at [http://people.revoledu.com/kardi)](http://people.revoledu.com/kardi)

### Who do I talk to? ###

If there are any questions regarding the code please contact either of the two people below:

Ioannis Makris - ioannis@makris.com
 
Andrew Chalikiopoulos - andreas.chalikio@hotmail.com