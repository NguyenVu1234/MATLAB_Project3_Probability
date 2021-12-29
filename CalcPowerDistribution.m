%The function is to calculate the probability of events in data source
%siteSurvey is input that users pass to the function when they call
%the function in the main file
function[outputDist] = CalcPowerDistribution(siteSurvey)

% Initialize the output of the function by matrix 3X2 with value 0
outputDist = zeros(3,2)

% Initialize the total day of each event that happen in the first sample 
% space with value 0
count1 = 0
count2 = 0
count3 = 0
% Use for loop to calculate the number of days of each event in the first
% sample space
    for ii = 1:length(siteSurvey)
        if siteSurvey(ii,1)<3
        count1 = count1 + 1
        end
        if siteSurvey(ii,1)>=3 && siteSurvey(ii,1)<=6
        count2 = count2 + 1
        end
        if(siteSurvey(ii,1)>6)
        count3 = count3 + 1
        end
    end
 % Calculate the probability of each event in the first sample space
 P1 = count1/length(siteSurvey) 
 outputDist(1,1)= P1
 P2 = count2/length(siteSurvey)
 outputDist(2,1) = P2
 P3 = count3/length(siteSurvey)
 outputDist(3,1) = P3
 
% Initialize the total day of each event that happen in the second sample 
% space with value 0
    count4 = 0
    count5 = 0
    count6 = 0
% Use for loop to calculate the number of days of each event in the second
% sample space
for ii = 1:length(siteSurvey)
        if siteSurvey(ii,2)<3
        count4 = count4 + 1
        end
        if siteSurvey(ii,2)>=3 && siteSurvey(ii,2)<=6
        count5 = count5 + 1
        end
        if(siteSurvey(ii,2)>6)
        count6 = count6 + 1
        end
end

  % Calculate the probability of each event in the second sample space
 P4 = count4/length(siteSurvey) 
 outputDist(1,2)= P4
 P5 = count5/length(siteSurvey)
 outputDist(2,2) = P5
 P6 = count6/length(siteSurvey)
 outputDist(3,2) = P6
end
