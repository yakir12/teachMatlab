% Like moral and law abiding people we will first clear everything, close
% everything, and CLear the Command window.
...
%%
% read in the image "justingogle.jpg" into a variable (say 'I'). Use the
% function 'imread'. It takes the image name as a string. Strings are
% denoted with single quotation marks like 'this'. 

I = ...
 
% create a vector of 'nsteps' length that goes from zero to one using the
% 'linspace' function we know so well. But alas, this vector's first
% argument can not be equal to zero (why you ask? I'll tell you why later)!
% So erase that first element in that vector (you know how, use the empty
% square brackets, '[]'). Now you have a vector with nsteps-1 elements. 
% Good yoggi, we wanted one with exactly nsteps elements. How can we fix 
% that?

nsteps = ...
r = linspace(...);
...

% Create a figure with white background (never mind the size and location,
% just control the color). 

figure(...

% Write a for-loop that runs from 1 to nsteps where each iteration it shows
% Justin's head in a different size. You'll need to know about the function
% that shows images: 'imshow'. It takes the image you read in (back in line
% #9) as the argument (and never mind what it does or does not output). And
% since you'll want to show differently sized Justin-heads, you'll need the
% function: 'imresize'. This nifty function takes two arguments: the image
% you want to resize (so 'I' from line #9) and the "resize factor" which is
% a number that tells 'imresize' how much (if the factor is smaller than
% one) smaller or (if the factor is larger than one) larger you want the
% image to get. This factor is 'r' that we defined in line #20! And this is
% why there cannot be a zero in 'r', cause how can we resize and image to
% zero? That's just crazy. The output of 'imresize' is the resized image of
% course (what did you think really?! that it would output candy? well if 
% it did they would contain gluten and dairy).
% Don't forget to finish the body of the iteration (i.e. before the 'end')
% with a call to 'drawnow' which makes sure it shows you the image every
% iteration (as opposed to only at the end).

for i = ...
    ...
end