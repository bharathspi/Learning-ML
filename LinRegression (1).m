function LinRegression()
    clear all; close all;
    DataPoints = [-10 -10;-8 -2; -6 -12; -4 -4; 10 10;8 2; 6 12; 4 4; ];
    DataPoints = DataPoints';
    DataPoints = [ones(1, size(DataPoints, 2)); DataPoints]; 
    RegMdl = [0;-1]; %y = -X
    W = findRegModel(DataPoints, RegMdl);
end
function W = findRegModel(DataPts, W)
    xMin = min(DataPts(2, :)) - 1;
    xMax = max(DataPts(2, :)) + 1;
    xrange = xMin:0.01:xMax; alpha = 0.005;
    Data = DataPts(1:end-1, :); predY = DataPts(end, :);
    for i = 1:30    
         y = (W(1)+W(2)*xrange);
         clf; plot (DataPts(2, :), DataPts(3, :), 'bo');  hold on;
         plot (xrange, y,'-.r');    pause(1);  
         
         hThetaX = W'*Data; 
         gradJ = mean(repmat((hThetaX - predY), size(Data, 1), 1).*Data, 2);
         W = W - alpha*gradJ; %apply gradient descent
         
         if (max(abs(alpha*gradJ)) < 0.01)
             %if gradient is almost zero
             return;
         end
    end
end
