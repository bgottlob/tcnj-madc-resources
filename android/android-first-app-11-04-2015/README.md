Follow the same process as last time when creating a new app. We'll call the app PersonUpdater. Select the option to create with a blank activity and don't bother to rename it. 

Once the app is done being initialized, the UI editor should pop up. This time we will try using it to create our UI. A few things to note that you can probably already see:
  -The Palette for UI elements is on the left hand side
  -The middle is our device that we will be dragging and dropping onto
  -The top right is our component tree, it will show you which component is currently active
  -The bottom right is the properties window where we can edit the attributes of our view elements. It's ok if you don't know what these attributes mean, some of them are deprecated and you can also just right click on them and select show documentation to see what the attribute is used for.
All of this will create the view XML for us. 
First we'll have to give the Relative Layout an ID. Scroll down in the Properties window until you see ID and type in 'person_view_layout'. I'm not sure what the best practices for naming these are so  we'll go with this for now.  
Then we'll drag the hello world string to the middle of the screen, it should align to the center automatically. Then we're going to scroll down in the properties window until we see id. Click on it and type 'lastNameLabel'. Then continue to scroll down until you see 'text'. There we will click once then click the little box to the right of it to see more options. Once this is opened, the option to select differnt resources or create a new resource are presented. Select 'New Resource' on the bottom left then select 'New String Value'. Once this window pops up, name your new string something 'first_name' or something similar and give it the text "First Name: ". Once the resource is created, select it as your resource then click OK to return back to the layout editor. The text of the TextView should now say "First Name: ". 

As you can see, there are plenty of other properties that we can set from the layout editor but we won't worry about that for now. 

Now, look at the palette and select a new  'Plain TextView' under the 'Widgets' folder. Click once then click anywhere on the device to place it. Folle the above steps but instead use 'last_name_label' as the id and 'last_name' for the new string resource. 

Do this one more time for an Age PlainTextView using 'age_label' for id and 'age' for your string id. 

Once you have created these 3 text views, look in the top left corner of the layout editor for a little white box with a left and right arrow. Select all 3 textviews then click that box. 

One more thing before we finish up with the View, it's time to add some buttons. Try adding 3 buttons by following the same steps as before. Follow the format of id = personX_button and set the text = PersonX where X is the number of the button you are making. 

Alright, that's enough UI editing for now, time to start some of the coding.

Open up the Java folder then click on your java package for the app to cascade those files. Click File then New to create a new Java Class. Name this class Person, then add 3 private variables, one for firstName, one for lastName, and one for age. Create a constructor and write a setter for firstName called changeFirstName. Once, this is set up, right click on a line below the constructer and select 'generate' then select 'Getters and Setters'. 

Now open up MainActivity.java. It's time to put the Model and the View together. Start by declaring a private Person array called people at the top of MainActivity

private Person[] people = new Person[]{
  new Person("Han", "Solo", 35),
  new Person("Luke", "Skywalker", 22),
  new Person("Ben", "Kenobi", 75)
};

Then, declare 3 private TextView variables for the TextViews that we created in the View.

private TextView firstNameTextView;
private TextView lastNameTextView;
private TextView ageTextView;

Next in the onCreate callback, we are going to get the View elements and assign them to the TextView variables we just declared

firstNameTextView = (TextView)findViewById(R.id.first_name_label);
lastNameTextView = (TextView)findViewById(R.id.last_name_label);
ageTextView = (TextView)findViewById(R.id.age_label);

Finally, we are going to create an onClickListener for each of the Buttons that we created earlier.

Button person1Button = (Button)findViewById(R.id.person1_button);
person1Button.setOnClickListener(new View.OnClickListener(){
  @Override
  public void onClick(View v){
    Person person [0];
    firstNameTextView.setText(getString(R.string.first_name) + " " + person.getFirstName());
    lastNameTextView.setText(getString(R.string.last_name) + " " + person.getLastName());
    ageTextView.setText(getString(R.string.age) + " " + person.getAge());
  }
});

Fill this in for the other 2 buttons now. That's it! Try to run it now. 

So, now what does all of this do? If you went to the Swift meeting last week then you should know that so far, this app simply changes the three name labels to reflect a new person on a particular button press. If something isn't working for you or you have any questions, feel free to email me at judym1@tcnj.edu. The full project so far is also above in this repo. Enjoy!
