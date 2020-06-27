function [] = show(Index, Images, Title)

if size(Images)(2) > 1
  count = round(sqrt(144));
else
  count = 1;
end
result = zeros(0);

for row = 1:count
  for col = 1:count
    index = (row-1)*count + col;
    x = (row-1)*20 + 1;
    y = (col-1)*28 + 1;
    
    image = reshape(Images(:,index), 20, 28);
    
    result(x:x+19, y:y+27) = image;
  end
end

figure(Index);
imshow(result');
title(Title);