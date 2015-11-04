package com.madc.tcnj.mjudy.personupdater;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


public class MainActivity extends ActionBarActivity {

	private Person[] people = new Person[]{
		new Person("Han", "Solo", 35),
		new Person("Luke", "Skywalker", 22),
		new Person("Ben", "Kenobi", 75)
	};

	private TextView firstNameTextView;
	private TextView lastNameTextView;
	private TextView ageTextView;



	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		firstNameTextView = (TextView)findViewById(R.id.first_name_label);
		lastNameTextView = (TextView)findViewById(R.id.last_name_label);
		ageTextView = (TextView)findViewById(R.id.age_label);


		Button person1Button = (Button) findViewById(R.id.person1_button);
		person1Button.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v){
				Person person = people[0];
				firstNameTextView.setText(getString(R.string.first_name) + " " + person.getFirstName());
				lastNameTextView.setText(getString(R.string.last_name) + " " + person.getLastName());
				ageTextView.setText(String.valueOf(getString(R.string.age) + " " + person.getAge()));
			}
		});

		Button person2Button = (Button) findViewById(R.id.person2_button);
		person2Button.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v){
				Person person = people[1];
				firstNameTextView.setText(getString(R.string.first_name) + " " + person.getFirstName());
				lastNameTextView.setText(getString(R.string.last_name) + " " + person.getLastName());
				ageTextView.setText(String.valueOf(getString(R.string.age) + " " + person.getAge()));
			}
		});

		Button person3Button = (Button) findViewById(R.id.person3_button);
		person3Button.setOnClickListener(new View.OnClickListener(){
			@Override
			public void onClick(View v){
				Person person = people[2];
				firstNameTextView.setText(getString(R.string.first_name) + " " + person.getFirstName());
				lastNameTextView.setText(getString(R.string.last_name) + " " + person.getLastName());
				ageTextView.setText(String.valueOf(getString(R.string.age) + " " + person.getAge()));
			}
		});

	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.menu_main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();

		//noinspection SimplifiableIfStatement
		if (id == R.id.action_settings) {
			return true;
		}

		return super.onOptionsItemSelected(item);
	}
}
