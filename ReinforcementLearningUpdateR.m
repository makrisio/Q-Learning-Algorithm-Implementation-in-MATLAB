function q=ReinforcementLearningUpdateR(R, gamma, goalState, alpha, epsilon)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Original Q Learning by Example code, by Kardi Teknomo 
% (http://people.revoledu.com/kardi/)
%
% Code amended by Ioannis Makris and Andrew Chalikiopoulos
% Model for an agent to find shortest path through a 10x10 maze grid
% This algorithm uses a the e-greedy algorithm to choose the next state
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
clc;
format short
format compact

% Four inputs: R, gamma and alpha, epsilon
if nargin<1,
% immediate reward matrix;
    R=RewardMatrix100;
end
if nargin<2,
    gamma=0.80;              % discount factor
    alpha=0.50;              % learning rate
    epsilon=0.9;             % epsilon value for greedy algorithm
end
if nargin<3
    goalState=74;
end

q=zeros(size(R));        % initialize Q as zero
q1=ones(size(R))*inf;    % initialize previous Q as big number
count=0;                 % counter
steps=0;                 % counts the number of steps to goal
B=[];                    % matrix to add results of steps and episode count
cumReward=0;             % counter to calculate accumulated reward
exploitCount=0;
exploreCount=0;

for episode=1:50000
    
    state=5;        % Starting state of the agent
    
    
    while state~=goalState            % loop until find goal state
        % select any action from this state using ?-greedy
        x=find(R(state,:)>=-50);         % find possible action of this state
        if size(x,1)>0,
            
            r=rand; % get a uniform random number between 0-1
     
     % choose either explore or exploit
     if r>=epsilon   % exploit
         [~,qmax]=(max(q(state,x(1:end)))); % check for action with highest Q value
         x1 = x(qmax);  % set action with highest Q value as next state
         
         if epsilon>=0.5
            epsilon=epsilon*0.99999; % decrease epsilon
         else
             epsilon=epsilon*0.9999; % decrease epsilon
         end
         
         if R(state,x1)==-50
                 R(state, x1)=0; % Update reward of wall
         end
         
         cumReward=cumReward+q(state,x1); %keep track of cumulative reward for graph
         exploitCount=exploitCount+1;
         %display('exploit');
         
     else        % explore
             x1=RandomPermutation(x);   % randomize the possible action
             x1=x1(1);                  % select an action (only the first element of random sequence)
             
             if epsilon>=0.5
                epsilon=epsilon*0.99999; % decrease epsilon
             else
                epsilon=epsilon*0.9999; % decrease epsilon
             end
             
             if R(state,x1)==-50
                 R(state,x1)=0;  % Update reward of wall               
             end
             
             cumReward=cumReward+q(state,x1); %keep track of cumulative reward for graph
             exploreCount=exploreCount+1;
             %display('explore');
     
     end

        x2 = find(R(x1,:)>=-50);   % find possible steps from next step
        qMax=(max(q(x1,x2(1:end)))); % extract qmax from all possible next states
        q(state,x1)= q(state,x1)+alpha*((R(state,x1)+gamma*qMax)-q(state,x1));    % Temporal Difference Error
        state=x1;    % set state to next state
        
        end
           
        if state~=goalState     % keep track of steps taken if goal not reached
            steps=steps+1;
            
        else
            steps=steps+1;
            A=[episode; steps; cumReward];   % create episodes, steps and cumReward matrix
            B=horzcat(B, A);    % add the new results to combined matrix        
        end
    
    end
        
    % break if convergence: small deviation on q for 1000 consecutive
    if sum(sum(abs(q1-q)))<0.00001 && sum(sum(q >0)) && epsilon<0.01
        if count>1000,
            q1=q;
            %episode  % report last episode
            break % for
        else
            q1=q;
            count=count+1; % set counter if deviation of q is small
        end
    else
        q1=q;
        count=0;  % reset counter when deviation of q from previous q is large
    end
        fprintf('Episode %i completed. The agent required %i steps to reach the goal. The cumulative reward gained is %i.\n', episode, steps, cumReward);
        steps=0;    % reset steps counter to 0
        cumReward=0;    % reset cumReward counter to 0
end

% row 4 in matrix is cumReward/steps taken per episode
%B(4,:) = (B(3,:)./B(2,:));
B(4,:) = rdivide(B(3,:),B(2,:));

%episodes vs cumReward taken averaged against steps taken
%stairs(B(1,1 : 5 : end),B(4,1 : 5 : end));

%create a plot of episodes vs steps taken and episodes vs cumReward taken averaged against steps taken
figure % new figure
[combinedGraph] = plotyy(B(1,1 : 5 : end),B(2,1 : 5 : end), B(1,1 : 5 : end),B(4,1 : 5 : end));

title('Q-Learning Performance')
xlabel('Episodes')
ylabel(combinedGraph(1),'Steps') % left y-axis
ylabel(combinedGraph(2),'Cumulative Reward/Steps') % right y-axis

% create a plot of episodes vs cumReward
figure
plot(B(1,1 : 5 : end),B(3,1 : 5 : end));
title('Cumulative Rewards vs Episodes')
xlabel('Episode')
ylabel('Cumulative Reward')

% create a plot of episodes vs steps
figure
plot(B(1, 1 : 5 : end),B(2, 1 : 5 : end));
title('Steps vs Episodes')
xlabel('Episode')
ylabel('Steps')

%normalize q
g=max(max(q));
if g>0, 
    q=100*q/g;
end

% display the shortest path to the goal
Optimal=[];
state=5;
Optimal=horzcat(Optimal,state);

while state~=goalState
    
         [~,optimal]=(max(q(state,:)));
         state = optimal;
         Optimal=horzcat(Optimal,state);         
end

display('Shortest path:')
display(Optimal);

display(exploitCount);
display(exploreCount);