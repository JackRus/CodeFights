# Global Event 
Event Management Application. You can try the app [here](http://ge.jackrus.us)

The App is deployed on Digitalocean.com, using C#, ASP.NET Core 1.1, Entity & Identity Frameworks, Eventbrite API, jQuery, SQLite, Bootstrap. Server: Nginx (as proxy) on Ubuntu 16.04. 

The app makes it easy to self-check in and self-register at the events, very clean and simple UI for attendees. while providing the full control over the process for admins.
Authorization (claims based) and Authentication via ASP.NET Identity. Ability to block/unblock admins and precisely customize their access level.

## Log In:

AS ATTENDEE

1. To check the App as an attendee(visitor) you do not need to log-in. You simply need to "purchage" (tickets are free) a ticket on the Event's page here.
2. After that follow the registration/check-in steps.

AS ADMIN
1. [click here](http://ge.jackrus.us/Account/Login) or click the button "Admin" in the right-bottom corner of any page.  

2. To log-in as an Owner (has full access to all features) use
* PASS: Password1!
* USERNAME: owner@owner.owner
3. To log-in as an regular Admin (basic access level) use
* PASS: Password1!
* USERNAME: admin@admin.admin

## Technologies used:

*   ASP.NET Core 1.1
*   C#
*   Entity Framework 
*	SQLite
*	Identity Framework
*   Eventbrite API
*   JavaScript, jQuery, AJAX
*   Linux Ubuntu 16.04
*   HTML, Bootstrap, CSS
*   Nginx as reverse proxy
*   QR Core [Libruary] (http://jeromeetienne.github.io/jquery-qrcode/)


## More detailed info to come...
