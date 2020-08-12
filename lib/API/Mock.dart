
import 'dart:core';

class Mock{


static List<Subscription> getAllSubscriptions(){
List<Subscription> subscriptions= new List<Subscription>();

subscriptions.add(new Subscription(amountPerMonth: 9, name: "suresh",notes: "asdfasdf", noticePeriodInMonths: 2, bindingEndDate: DateTime.parse("2020-09-20")));
return subscriptions;
}
   
}
class Subscription{
    String name;
    String notes;
    int noticePeriodInMonths;
    DateTime bindingEndDate;
    double amountPerMonth;
  
  Subscription({this.name, this.notes, this.noticePeriodInMonths, this.bindingEndDate, this.amountPerMonth});

}