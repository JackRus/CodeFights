# Global Event 
Event Management Application. You can try the app [here](http://ge.jackrus.us)

The App is deployed on Digitalocean.com, using C#, ASP.NET Core 1.1, Entity & Identity Frameworks, Eventbrite API, jQuery, SQLite, Bootstrap. Server: Nginx (as proxy) on Ubuntu 16.04. 

The app makes it easy to self-check in and self-register at the events posted on Eventbrite.com, very clean and simple UI for attendees. while providing the full control over the process for admins.
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
*   QR Core [Libruary](http://jeromeetienne.github.io/jquery-qrcode/)

## Features:



## Getting Started:

When the is just deployed

## How To:

### Create an Event:

- Clicks: Main Menu -> Events -> Add
- Form Instructions: 
  - Name: event's name
  - Begins/Ends On: date when the event begins/ends
  - Begins/Ends At: time when the event begins/ends
  - Description: visible to public, official event description
  - Free Event: if event is free of charge
  - Revenue Plan $: your revenue forecast/plan (all sales: tickets, workshops and etc.) 
  - Eventbrite's Token: [intstructions](#Eventbrite)
  
  
 
 
## Eventbrite's Token
To be able to get the information from Eventbrite about your events, you will need to follow the next steps:
  - Log In to [Eventbrite](https://www.eventbrite.com)
  - Go to page [My Apps](https://www.eventbrite.com/myaccount/apps/) page
  - Click "Create New App"
  - Fill the form:
    - Application URL: http://www.YourAppName.com
    - Application Name: Your App Name
    - Description: Your App description, general info.
  - Click "Create Key"
  - Find a just created app and click "Show Client Secret and OAuth Token"
  - Copy the "Your personal OAuth token" value
  


