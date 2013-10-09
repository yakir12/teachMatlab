% Like moral and law abiding people we will first clear everything, close
% everything, and CLear the Command window.
...
%%
% read in the image "justingogle.jpg" into a variable (say 'I'). Use the
% function 'imread'. It takes the image name as a string. Strings are
% denoted with single quotation marks like 'this'. 

...
 
% create a vector of 'nsteps' length that goes from zero to one using the
% 'linspace' function we know so well. But alas, this vector's first
% argument can not be equal to zero (why you ask? I'll tell you why later)!
% So erase that first element in that vector (you know how, use the empty
% square brackets, '[]'). Now you have a vector with nsteps-1 elements. 
% Good yoggi, we wanted one with exactly nsteps elements. How can we fix 
% that?

...

% Create a figure with white background (never mind the size and location,
% just control the color). 

...

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

...

%% Advanced

% Let's try and get rid of that jumping and jittering. You'll need to
% buffer the resized image so that although it's now smaller than normal
% (for 'r' values that are smaller than 1) it'll need to be surrounded by
% white (that means 255) so that the number of pixels in that image is
% equal to the maximum size.
% You'll need these functions:
% size
% imresize
% round
% padarray
% imshow
% drawnow
% What you want to do is find the difference between the size of the
% original image and that of the resized one. Pad the image with half that
% difference (but it needs to be a round number! cause there's no meaning
% in an image that is 5.5 pixels wide... use the 'round' function) on one
% side (using the wonderful option "pre" or "post" in the 'padarray'
% function) of the resized image. Then padd that with
% what-ever-number-of-pixels-you'll-need-so-that-the-resized-paded-image-will-now-be-the-size-of-the-original-image
% on the other side, and there, you're done!
% Check the help files! I replaced key points in the code with '...', so
% you could use the following as a skeleton or you could work it out on
% your own!

sz = ...;
sz(3) = [];
figure('color',...)
... i = ...
    I2 = imresize(...,r(i));
    sz2 = ...;
    sz2(3) = ...;
    pad = ...((...-...)/2);
    J = padarray(I2,[...,0],255,'pre');
    J = padarray(...,[...],255,'post');    
    imshow(...)
    ...
end
