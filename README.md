# image_classification
In this application , we have created tensorflow program to teach a 
convolutional neural network to recognize images. We have 25,000 images
of dogs and cats.

The role of neural network to learn to classify the images into one of
two groups , either dogs or cats.

to run the program , you have to run the following command:
$ python image_classification.py [num_steps]

the [num_steps] is optional parameter which is number of training steps
executed in the convolutional neural network.The default value is 10,000.

The folder 'train' contains training dataset
the folder 'test' contains the testing dataset
the folder 'outtrain' contains the training dataset images after resizing.
the folder 'outtest' contains the testing dataset images after resizing.
the file 'result.csv' contains the probability of being god image for 
each image in the testing dataset files.
