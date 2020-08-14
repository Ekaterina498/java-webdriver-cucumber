package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.assertj.core.util.Arrays;

import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.List;

public class JavaStepDefs {
    @Given("I say hello world")
    public void iSayHelloWorld() {

        System.out.println("Hello world");

        String firstName = "Ekaterina";
        String lastName = "Filatova";
        System.out.println("Full name: " +firstName+ " " +lastName);

        String greeting = "Hello";
        String text = "I'm an engineer";
        System.out.println(greeting + ", " +text);



    }

    @And("I say {string}")
    public void iSay(String message) {
        System.out.println(message);
        System.out.println("Ben says " + message);

        String question = "Who said?";
        String message1 = "Ben says: ";
        System.out.println(question + " " +message1+ " :)) " +message);

        message = message.toUpperCase();
        System.out.println(message);



    }


    @And("I call {int} times")
    public void iCallTimes(int number) {
        System.out.println(number);
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println("str1: " + str1 );
        System.out.println("str2: " + str2 );

        System.out.println("str1 upperCase: " + str1.toUpperCase());
        System.out.println("str2 upperCase: " + str2.toUpperCase());

        System.out.println("str1 lowerCase: " + str1.toLowerCase());
        System.out.println("str2 lowerCase: " + str2.toLowerCase());

        System.out.println(str2.equals("my VAR"));
        System.out.println(str2.equals("my var"));
        System.out.println(str1.length());
        System.out.println(str2.length());
        System.out.println("str1 len: " + str1.length());
        System.out.println("str2 len: " + str2.length());


//      System.out.println("str1 == str2 ?: " + str1 == str2);
        System.out.println("str1 equals (str2) ?" + str1.equals(str2));
        System.out.println("str1 equals ignore case str2?" + str1.equalsIgnoreCase(str2));
        System.out.println("str1 contains str2? " + str1.contains(str2));
        String var = "hello";
        System.out.println(var.toUpperCase());


        boolean b =str1.equals(str2);
        if (b) {
            // gets inside if true
            System.out.println("String equal each other!");

        }else {
            // gets inside if false
            System.out.println("String do not equal each other!");
        }




    }

    @Given("I open login page")
    public void iOpenLoginPage() {
        System.out.println("Open login");
        
    }

    @And("I enter valid credentials for {string}")
    public void iEnterValidCredentialsFor(String user) {
        System.out.println("Entering creds for " + user);
        
    }

    @And("I calculate numbers")
    public void iCalculateNumbers() {

        System.out.println(10.0/3);
        System.out.println(10%3);
        System.out.println(9%3);
        System.out.println(21%3);
        System.out.println(22%3);
        System.out.println(23%3);

        int i = 5;
        Integer index = 5;

        System.out.println(i == index);

        double d = 5.0;
        Double doubleValue = 5.0;


        System.out.println(i < d);
        System.out.println(i == d);

        System.out.println(index == d);
        System.out.println(index.equals(d));
        // below 2 are the same
        System.out.println(index != d);
        System.out.println(!(index == d));


        if (i > d) {

            System.out.println("i more than d!");

        }else if (i == d){

            System.out.println("i equeals d!");
        }else {
            System.out.println("i less than d!");
        }



    }

    @And("I work with arrays")
    public void iWorkWithArrays() {
        int[] nums = {5, 2, 5, 7, 10, 11, 1};
        nums[0] = 7;
        double[] doubles = {5.0, 2, 5, 7, 10, 11, 1 };


        System.out.println(nums);
        for (int i : nums) {
            System.out.print(i + " ");
        }
        System.out.println("First out of nums: " + nums[0]);

        System.out.println();
        String[] fruits = {"kiwi", "apple", "orange"};
        for (String fruit : fruits) {
            System.out.print(fruit + " ");
        }
        System.out.println("Second out of fruits: " + fruits[1]);




        List<Integer> listOfNums = new ArrayList<>();
        listOfNums.add(5);
        listOfNums.add(2);
        listOfNums.add(3);
        for (Integer i : listOfNums) {
            System.out.println(i);
        }

        List<String> listOfFruits = new ArrayList<>();
        listOfFruits.add("kiwi");
        listOfFruits.add("apple");
        listOfFruits.add("orange");
        for (String fruit : listOfFruits) {
            System.out.print(fruit + " ");
        }


        for (String fruit : listOfFruits) {
            System.out.print(fruit + " ");
        }
    }
}




