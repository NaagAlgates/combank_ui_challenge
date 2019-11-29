class DisplayGreetings {

  var message = getGreetings();

  static String getGreetings() {
    DateTime timeOfDay = DateTime.now();
    var currentHour = timeOfDay.hour;
    if (currentHour >= 0 && currentHour < 12) {
      return "Good Morning";
    }else if(currentHour >= 12 && currentHour < 16){
      return "Good Afternoon";
    }else
      return "Good Evening";
    }
  }
