#Timed Form App
Simple prototype for timing a form. 
Instead of using timestamps, the project takes a countdown function from https://github.com/rxsharp/10-Minute-Countdown.
The input is processed on the server side with Ruby.
The countdown is from 10 minutes. The format is 10:00.
timed_form.js.coffee adds the value to the being input.
The controller splits the ":" and converts the two arrays into integers.
The sum of the two instance variables @minutes and @seconds are converted into negative numbers.
600 seconds are added to calculate the total seconds to complete the form.
@time_format converts to the seconds into minute(s):second(s).

## Scaffold TimedForm begin
rails g scaffold TimedForm begin
> A scaffold was implemented for the purpose of a quick demo.


## Research
http://stackoverflow.com/questions/19595840/rails-get-the-time-difference-in-hours-minutes-and-seconds
