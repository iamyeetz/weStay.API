// IMPORTANT NOTE: 
// 1. either add migration and update-database or just execute the script cause i already icluded the generated script in the folder 
//    SqlScript so that schema and data will be  inserted
// 2. React App is deployed in https://westayph.netlify.app/ but still I included the whole project folder zip on my email            
// 3. Consuming of api in react is hardcoded to this port http://localhost:50683

//    
//
// 
//  -- weStay is a application that lets you book rooms online, currently site only have 3 rooms available to book. As you can see UI is quite
//     simple and the only thing it does is to get info from you and process your booking. I included a calendar to view the existing booking
//     or to check the available dates for the chosen room.
//  -- Doing the back end is quite easy because through out my career i was focused on developing/ using back end technologies. I literally spent
//     more time doing the front end and integrating it to the API
//  -- anything i left out , maybe If i have more time I also created a feature that you can (admin account)add a room, edit it and upload photos 
//     (also to view photos in bigger size) 
//  -- I chose react instead of creating a view here in .net using razor to challenge myself on integration of react to .net core and to see if
//     i can make it fullstack and to implement SPA
//  -- In backend I implemented dependency injection, Interfaces and used entity framework core v.3.1.10 (code first migration) also enable CORS,
//     I was planning to put a api gateway using ocelot so that front end cannot access directly the API and to really implement SRP. but yeah,
//     I really spent  most time creating the front
//  -- In front end when im designing it I used the resources that is available that i can install like the FullCalendar that shows the date
//     that has booking and let you pick a date by simple clicking it.
//  -- here my resume https://drive.google.com/file/d/1dKdv1LgiMlOZW_GIDrormoRFholK0paq/view?usp=sharing
//  -- oh i forgot to mention , i forgot to implement caching 