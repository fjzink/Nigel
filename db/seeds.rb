Student.delete_all
Teacher.delete_all
Favorite.delete_all
Resource.delete_all
Hashtag.delete_all
ResourceHashtag.delete_all

Student.create(username: "Julia", email: "julianrivera@gmail.com", password: "julia123")

Teacher.create(username: "Shambhavi", email: "shambhavi@gmail.com", password: "shambhavi123")

Resource.create(title: "What is AJAX?", content: "Ajax is not a programming language or a tool, but a concept. Ajax is a client-side script that communicates to and from a server/database without the need for a postback or a complete page refresh. The best definition I’ve read for Ajax is “the method of exchanging data with a server, and updating parts of a web page – without reloading the entire page.” Ajax itself is mostly a generic term for various JavaScript techniques used to connect to a web server dynamically without necessarily loading multiple pages. In a more narrowly-defined sense, it refers to the use of XmlHttpRequest objects to interact with a web server dynamically via JavaScript.

  Benefits of Ajax

  There are 4 main benefits of using Ajax in web applications:

  Callbacks: Ajax is used to perform a callback, making a quick round trip to and from the server to retrieve and/or save data without posting the entire page back to the server. By not performing a full postback and sending all form data to the server, network utilization is minimized and quicker operations occur. In sites and locations with restricted bandwidth, this can greatly improve network performance. Most of the time, the data being sent to and from the server is minimal. By using #callbacks, the server is not required to process all form elements. By sending only the necessary data, there is limited processing on the server. There is no need to process all form elements, process the ViewState, send images back to the client, or send a full page back to the client.
  Making Asynchronous Calls: #Ajax allows you to make #asynchronous calls to a web server. This allows the client browser to avoid waiting for all data to arrive before allowing the user to act once more.
  User-Friendly: Because a page postback is being eliminated, Ajax enabled applications will always be more responsive, faster and more user-friendly.
  Increased Speed: The main purpose of Ajax is to improve the speed, performance and usability of a web application. A great example of Ajax is the movie rating feature on Netflix. The user rates a movie and their personal rating for that movie will be saved to their database without waiting for the page to refresh or reload. These movie ratings are being saved to their database without posting the entire page back to the server.", link: "https://www.seguetech.com/ajax-technology/")

Resource.create(title: "React Tutorial: Lynda", content: "A new #JavaScript library has arrived: React.js. React.js is designed to make the process of building modular, reusable user interface components simple and intuitive. Design simple views for each state in your application, and #React will efficiently update and render just the right components when your data changes. In this course, Eve Porcello helps you get started with React.js, guiding you through the interface design of a sample bulletin board app. She reviews components, properties, and component state, as well as the foundational parent/child relationships within React. Eve also describes the lifecycle of components and how developers can trigger creation, lifetime, and teardown events. The course wraps with a chapter dedicated to building a more complete app with React.js and companion tools like Babel, NPM, and more.", link: "https://www.lynda.com/React-js-tutorials/What-React/519668/542812-4.html")

Resource.create(title: "Big O Notation", content: "Big O notation is the language we use for articulating how long an algorithm takes to run. It's how we compare the efficiency of different approaches to a problem.

  With big O notation we express the runtime in terms of—brace yourself—how quickly it grows relative to the input, as the input gets arbitrarily large.

  Let's break that down:

  how quickly the runtime grows—Some external factors affect the time it takes for a function to run: the speed of the processor, what else the computer is running, etc. So it's hard to make strong statements about the exact runtime of an algorithm. Instead we use big O notation to express how quickly its runtime grows.
  relative to the input—Since we're not looking at an exact number, we need to phrase our runtime growth in terms of something. We use the size of the input. So we can say things like the runtime grows 'on the order of the size of the input' (O(n)O(n)) or 'on the order of the square of the size of the input' (O(n^2)O(n2)).
  For big O analysis, we care most about the stuff that grows fastest as the input grows, because everything else is quickly eclipsed as nn gets very large. If you know what an asymptote is, you might see why 'big O analysis' is sometimes called 'asymptotic analysis.'
  #Big #O #notation is like math except it's an awesome, not-boring kind of math where you get to wave your hands through the details and just focus on what's basically happening.", link: "https://www.interviewcake.com/article/java/big-o-notation-time-and-space-complexity")

Resource.create(title: "Angular JS", content: "#Angular is a client side JavaScript MVC framework to develop a dynamic web application. AngularJS was originally started as a project in Google but now, it is open source framework.

  AngularJS is entirely based on HTML and JavaScript, so there is no need to learn another syntax or language. AngularJS changes static HTML to dynamic HTML. It extends the ability of HTML by adding built-in attributes and components and also provides an ability to create custom attributes using simple JavaScript.", link: "http://www.tutorialsteacher.com/angularjs/what-is-angularjs")

Resource.create(title: "Differences between ReactJS and React-Native", content: "#React #Native has been around for about 2 years, and became a really interesting framework since it can be used for #Android and let us build cross-platform mobile apps. A few contributors also customized the framework to build desktop apps for Mac and Windows, which is quite cool.
  React-Native is very similar to ReactJS in a way, but there are differences you need to know before you start your first native app. In this article, I’m going through the main differences I have encountered as a ReactJS web developer who learned to use React-Native and built a few native apps with this technology.
  Setup and bundling
  React-Native is a framework, where ReactJS is a javascript library you can use for your website. When you start a new project with ReactJS, you probably will choose a bundler like Webpack and try to figure out which bundling modules you need for your project. React-Native comes with everything you need and you most likely wouldn’t need more. When you start a new project you will notice how easy is it to set up: it’s very fast and only takes you one command line to run in the terminal and you will be ready to go. You can start coding your first native app immediately using #ES6, some #ES7 features and even a few polyfills.
  To run your app, you will need to have Xcode (for iOS, on Mac only) or Android Studio (for Android) installed on your computer. You can either decide to run it on a simulator/emulator of the platform you want to use or directly on your own devices.
  #DOM and Styling
  React-Native doesn’t use HTML to render the app, but provides alternative components that work in a similar way. Those React-Native components map the actual real native iOS or Android UI components that get rendered on the app.
  Most components provided can be translated to something similar in HTML, where for example a View component is similar to a div tag, and a Text component is similar to a p tag.", link: "https://medium.com/@alexmngn/from-reactjs-to-react-native-what-are-the-main-differences-between-both-d6e8e88ebf24")

Resource.create(title: "What is Django?", content: "Django (/ˈdʒæŋɡoʊ/ jang-goh) is a free and open source web application framework, written in Python. A web framework is a set of components that helps you to develop websites faster and easier.

  When you're building a website, you always need a similar set of components: a way to handle user authentication (signing up, signing in, signing out), a management panel for your website, forms, a way to upload files, etc.

  Luckily for you, other people long ago noticed that web developers face similar problems when building a new site, so they teamed up and created frameworks (Django being one of them) that give you ready-made components to use.

  Frameworks exist to save you from having to reinvent the wheel and to help alleviate some of the overhead when you’re building a new site.

  Why do you need a framework?

  To understand what #Django is actually for, we need to take a closer look at the servers. The first thing is that the server needs to know that you want it to serve you a web page.

  Imagine a mailbox (port) which is monitored for incoming letters (requests). This is done by a web #server. The web server reads the letter and then sends a response with a webpage. But when you want to send something, you need to have some content. And Django is something that helps you create the content.", link: "https://tutorial.djangogirls.org/en/django/")

Resource.create(title: "What is Python used for?", content: "So what is Python?

  Python is a general purpose programming language created in the late 1980s, and named after Monty Python, that’s used by thousands of people to do things from testing microchips at Intel, to powering Instagram, to building video games with the PyGame library. It’s small, very closely resembles the English language, and has hundreds of existing third-party libraries.

  So what are the major reasons why I, personally, choose #Python and recommend it to as many people as possible? It comes down to three reasons.

  Readability

  Python very closely resembles the English language, using words like ‘not’ and ‘in’ to make it to where you can very often read a program, or script, aloud to someone else and not feel like you’re speaking some arcane language. This is also helped by Python’s very strict punctuation rules which means you don’t have curly braces ({ }) all over your code.

  Also, Python has a set of rules, known as PEP 8, that tell every Python developer how to format their code. This means you always know where to put new lines and, more importantly, that pretty much every other Python script you pick up, whether it was written by a novice or a seasoned professional, will look very similar and be just as easy to read. The fact that my Python code, with five or so years of experience, looks very similar to the code that Guido van Rossum (the creator of Python) writes is such an ego boost.

  Libraries

  Python has been around for over 20 years, so a lot of code written in Python has built up over the decades and, being an open source programming language, a lot of this has been released for others to use. Almost all of it is collected on https://pypi.python.org, pronounced “pie-pee-eye” or, more commonly called “the CheeseShop”. You can install this software on your system to be used by your own projects. For example, if you want to use Python to build scripts with commandline arguments, you’d install the “click” library and then import it into your scripts and use it. There are libraries for pretty much any use case you can come up with, from image manipulation, to scientific calculations, to server automation.", link: "http://blog.teamtreehouse.com/what-is-python")


Resource.create(title: "API for Beginners", content: "An API (Application #Programming Interface) is a software-to-software interface that enables two applications to exchange data among each other. Though this might sound a little boring, they are used a lot in the real world to create some amazing applications. One particularly key role that APIs will be playing, in the future, is to connect to The Internet of Things.

  As a simple example, Facebook has a public #API that allows third-party applications to integrate Facebook. This means that a developer, for example, can allow you to log into an application using your own Facebook account. The term “integrate” means that an application is using a particular API.

  Adding Facebook is just one example. There are thousands of other cases where applications integrate other services. For example, other integrations could include:

  WhatsApp integrated Google Maps so you can share your location in a message
  Spotify and many others integrated Facebook so you can log into their applications with your Facebook account
  Some other sites have integrated YouTube so you can watch videos without leaving the site
  Now, you are either reading this guide because you are completely new to APIs, or you already know a little bit about them and want to now integrate them into your own applications, So how do you go about doing this? One of the easiest ways to do this is to learn in regards to making an example app, so, these are the steps you would have to take:

    Let’s imagine you are an aspiring software developer and are designing your own app. Let’s also call this application MyApiApp. The goal of MyApiApp is to obtain the maximum benefit from the users social networks. So for example, by viewing the statuses of friends on all networks on one screen. Therefore MyApiApp shows the most important news of everyone on all of a user’s social networks. For this, the MyApiApp application has to access the functions of Facebook, Google+ and LinkedIn. To do this, we will use their APIs.

      How #APIs Work for Beginners – The technical details
  Even if you are just starting out, you will want to know a little bit about the technical details of how APIs can communicate to services. One problem is that different APIs will communicate in different ways.

  Most API’s come underneath four different types. RESTful types are the most common, and the rest of the article will be about those, but to sum up the other three:

  SOAP – Simple Object Access Protocol. These exchange data in the form of an #XML file (which is like a fancy kind of HTML Table document).
  JavaScript – A specialist kind of APIs, these are focused around #Javascript and are accessed using this language. These are only really used by Javascript and Web developers.
  XML-RCP – To use these kinds of APIs, you call it using XML and it returns XML. This standard was further developed and became SOAP.

  In RESTful APIs, communication between applications is done using the underlying HTTP #protocol (HyperText Transfer Protocol). HTTP is widely used on the internet, and many developers are already familiar with it. In fact, this is the reason why all “true” web address start with either HTTP or #HTTPS. There are four major HTTP request methods:

  #GET – to fetch data
  #PUT – to edit existing data
  #POST – to add the new data
  #DELETE – to delete data
  After you have sent an instruction to Facebook, using one of these methods, then the Facebook #servers will process the given request. As long as valid inputs have been given, Facebook will then send back your requested data.

  Now, unfortunately, both how the data has to be formatted in the request, and how to call the request, is not uniform between APIs or programming languages. However, we can give an easy, interactive, example with the Google Maps API.

  When you use the Google Maps API, you get a #JSON #request back, which is an easy to read format for machines.

  If you click on the URL below, you will see exactly what kind of data a program calling this API via #RESTful HTTP would receive:

  http://maps.googleapis.com/maps/api/geocode/json?address=Mannheim

  As you are only reading the data, you would want to use the GET protocol, and you could do this in Javascript just like this:

  var GoogleMapsRequest = new XMLHttpRequest();
  GoogleMapsRequest.open(“GET”, “http://maps.googleapis.com/maps/api/geocode/json?address=Mannheim”, false);
  GoogleMapsRequest.send()

  This Google Maps API call returns the GeoData of Mannheim in the JSON format.

  Let’s leave it here for now, because there is one major thing to consider when using APIs. That of authentication.

  Many #APIs require that a user authenticates themselves. On the one hand,
  this ensures a degree of protection against abuse for others. This is because if a provider over abuses an #API by making, say, a million calls every minute, then the API will become slow and unstable for everyone else. This is a developer authenticating themselves with the API. On the other hand, you also have authentication from the user of the app. This is when a user allows access to their own personal data on a service. Consider MyApiApp. With this, we will be asking permission from a user to access their own personal newsfeed.

  To make users less wary about giving their personal data to an application, there are different types of authentication that can be done:

  #HTTP Basic Access #Authentication. This is a very basic form of authentication since it only requires a username and password. This is transmitted in the header of the HTTP request. This is the worst kind of Authentication, as the user data is only weakly encoded, offers no encryption, and therefore offers only a minimum of security.

  OAuth 1.0. This method provides a greater degree of security and works with things called tokens. A token is a unique string that can be assigned to an individual user. For example, MyApiApp can request a token from the user through the form of a Facebook login button. From there, the MyApiApp will then be able to use this user token to access the allowed uses of the Facebook profile. To the user, this process would very much look like downloading an app from the Android App store, where a list of permissions the app requires is provided.

  OAuth 2.0. #OAuth 2.0 is more than just a simple upgrade to OAuth 1.0. It is infact a new protocol, that operates in a completely new way. The main goals of OAuth 2.0 were to improve interoperability, as well as safety. That is, the new OAuth 2.0 protocol is able to used by many more different services (Interoperability), and the security of the protocol is a lot better and secure from attacks from the OAuth 1.0 protocol.", link: "https://blog.cloudrail.com/api-tutorial-for-beginners/")

Resource.create(title: "CRUD Operations", content: "If you’ve ever worked with a database, you’ve likely worked with CRUD operations. CRUD operations are often used with SQL, a topic we’ve covered in depth (see this article, this one, and this one for some of our recent #SQL tips and tricks). Since SQL is pretty prominent in the development community, it’s crucial for developers to understand how CRUD operations work. So, this article is meant to bring you up to speed (if you’re not already) on CRUD operations.

  The Definition of #CRUD

  Within computer programming, the acronym CRUD stands for create, read, update and delete. These are the four basic functions of persistent storage. Also, each letter in the acronym can refer to all functions executed in relational database applications and mapped to a standard #HTTP #method, SQL statement or DDS operation.

  It can also describe user-interface conventions that allow viewing, searching and modifying information through computer-based forms and reports. In essence, entities are read, created, updated and deleted. Those same entities can be modified by taking the data from a service and changing the setting properties before sending the data back to the service for an update. Plus, #CRUD is data-oriented and the standardized use of HTTP action verbs.

  Most applications have some form of CRUD functionality. In fact, every programmer has had to deal with CRUD at some point. Not to mention, a CRUD application is one that utilizes forms to retrieve and return data from a database.

  The first reference to CRUD operations came from Haim Kilov in 1990 in an article titled, “From semantic to object-oriented data modeling.” However, the term was first made popular by James Martin’s 1983 book, Managing the Data-base Environment. Here’s a breakdown:
  #CREATE procedures: Performs the #INSERT statement to create a new record.
  #READ procedures: Reads the table records based on the primary keynoted within the input parameter.
  #UPDATE procedures: Executes an #UPDATE statement on the table based on the specified primary key for a record within the WHERE clause of the statement.
  #DELETE procedures: Deletes a specified row in the WHERE clause.
  How CRUD Works: Executing Operations and Examples

  Based on the requirements of a system, varying user may have different CRUD cycles. A customer may use CRUD to create an account and access that account when returning to a particular site. The user may then update personal data or change billing information. On the other hand, an operations manager might create product records, then call them when needed or modify line items.

  During the Web 2.0 era, CRUD operations were at the foundation of most dynamic websites. However, you should differentiate CRUD from the HTTP action verbs. For example, if you want to create a new record you should use “POST.” To update a record, you would use “PUT” or “PATCH.” If you wanted to delete a record, you would use “DELETE.” Through CRUD, users and administrators had the access rights to edit, delete, create or browse online records.

  An application designer has many options for executing CRUD operations. One of the most efficient of choices is to create a set of stored procedures in SQL to execute operations. With regard to CRUD stored procedures, here are a few common naming conventions:

  The procedure name should end with the implemented name of the CRUD operation. The prefix should not be the same as the prefix used for other user-defined stored procedures.
  CRUD procedures for the same table will be grouped together if you use the table name after the prefix.
  After adding CRUD procedures, you can update the database schema by identifying the database entity where CRUD operations will be implemented.

  Benefits of CRUD

  Instead of using ad-hoc SQL statements, many programmers prefer to use CRUD because of its performance. When a stored procedure is first executed, the execution plan is stored in SQL Server’s procedure cache and reused for all applications of the stored procedure.

  When a SQL statement is executed in SQL Server, the relational engine searches the procedure cache to ensure an existing execution plan for that particular SQL statement is available and uses the current plan to decrease the need for optimization, parsing and recompiling steps for the SQL statement.

  If an execution plan is not available, then the SQL Server will create a new execution plan for the query. Moreover, when you remove SQL statements from the application code, all the SQL can be kept in the database while only stored procedure invocations are in the client application. When you use stored procedures, it helps to decrease database coupling.

  Furthermore, using CRUD operations helps to prevent SQL injection attacks. By utilizing stored procedures instead of string concatenation to build dynamic queries from user input data for all SQL Statements means that everything placed into a parameter gets quoted.

  CRUD Prevents Casual Browsing and Changes

  Application roles are a SQL Server technique that lets code switch identities without informing the user. To work with ad hoc SQL statements, users must have the required permissions on the database tables. Once permission is granted, users can read and manipulate data in applications such as Excel, Word, and others. Users can even bypass the application’s business rules.

  Yet, this is an unwanted situation that can be prevented through the Application Role. Through integrated security for database access and an Application Role, these types of loopholes can be closed. CRUD comes in since Application roles are added to the database using a stored procedure. It is also implemented by granting permission to execute the CRUD stored procedures and revoking direct access to the tables.

  Once an Application Role is added, permissions are assigned, and a password is given. The password is also coded into the application, making it difficult to change. For manipulating data, CRUD is the method to use.", link: "https://stackify.com/what-are-crud-operations/")

Resource.create(title: "Why use jQuery?", content: "Based on the manipulation of the HTML #DOM (Document Object Model) and designed to simplify the #client-side scripting of #HTML, #jQuery incorporates parts of HTML and #CSS. Thousands of companies are on the jQuery bandwagon, and your company should be, too.

  Let's look at why jQuery is making such an impact on the enterprise level.


  1. jQuery promotes simplicity

  Developers find jQuery intuitive and easy to learn -- this library is built on shorter, simpler code, after all. With simple syntax and open coding standards, developers can shorten the time it takes to deploy an application or site.

  In addition, developers don't have to be experts in programming or Web design to create great styles for their sites. Any developer who has spent hours coding and testing CSS files will surely appreciate the simple implementation that jQuery brings to the table. There's also a set of robust jQuery UI components that developers can plug into their websites.

  2. jQuery elements display even when JavaScript is disabled

  If #Adobe Flash isn't installed on any given browser, certain parts of the page may render incorrectly, if they render at all. This is not only unpleasant for the user; it forces developers to spend extra time coding for the browsers that lack the Flash plug-in, which adds to development time.

  Not so with jQuery. Manipulating the HTML DOM has become the most widely accepted practice of manipulating a Web page so content will be rendered even if JavaScript is disabled in the browser. Since the HTML DOM is always present, there's no more worrying about browser settings either.

  Furthermore, developing using jQuery can reduce instances of help desk tickets. Your help desk will appreciate that your developers are coding proactively to avoid dreaded browser crashes.

  3. jQuery easily integrates with the Visual Studio IDE

  NuGet is a Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects that use the .Net Framework. NuGet has been around for years, and it's a trusted source for developers to exchange and develop packages for Microsoft Visual Studio.

  Visual Studio 2010 supports the integration of the jQuery library via the Manage NuGet Packages dialog box. This activates the Intellisense feature of Visual Studio, which gives the developer immediate access to jQuery methods and syntax without having to leave code view to do research. There isn't a better tool to work in a Microsoft-based .Net environment.

  In general, most .Net developers use Visual Studio and are familiar with NuGet. This is part of the reason why jQuery's popularity continues to grow with .Net developers. With the addition of the jQuery mobile theme for Windows, you now have all the development benefits of the jQuery library available for the Windows Phone platform.

  Microsoft is showing that it's serious about HTML5, which includes a lot of jQuery elements, by promoting the use of jQuery libraries that the HTML5 crowd has adopted. Microsoft is encouraging the use of jQuery, not only in mobile development but also in new Metro-style UI apps.

  4. jQuery makes animated applications just like Flash

  Flash developers are not cheap. Developing in Flash requires a huge learning curve; for the average developer, it can take years of practice to be able to create the movie-like creations that made Flash famous. On the other hand, jQuery is free and requires only the knowledge of JavaScript and HTML.

  Let's say you can afford your software and your Flash developer. He or she still has to code for browsers and platforms that don't support Flash and for audiences that will not be able to view your Flash content. This is one of the biggest drawbacks of building a Flash-only website -- and one of the biggest advantages of building in HTML5.

  Meanwhile, jQuery uses a combination of CSS, HTML, JavaScript, and AJAX. These are all markup-based technologies that are meant to work well together. This means you can apply an optimization strategy to your site without having to make special adjustments for technologies like Flash. Bottom line: You can achieve great-looking effects that will keep your audience engaged.

  For interesting examples of the kind of animation that can be achieved using HTML5 and jQuery, check out the boostinspiration.com feature HTML5 Websites: 10 Flash-killing examples.

  5. jQuery pages load faster

  Google and other search engines using page load time as one of the many factors affecting SEO. (More on that later.) For this, and many other, reasons, every developer should strive to make code as light and concise as possible.

  The best way to do this is to reduce the size of your code. If your site is coded with an HTML and CSS base, you can easily make uniform adjustments to your code that will reduce the size. Like CSS, jQuery files are generally stored separately from the Web page itself. This lets developers make modifications across the entire site through one central repository instead of search through folder structures. This is a core benefit of CSS coding, and it is a proven success.

  In addition, jQuery gives you the option of loading div tags only when you need them. If you are taking measures to improve the speed of your website, then you may consider loading only the necessary div tags needed for your page load event. This way, you can display only what a user needs to see right away and have the rest of your division elements load as they are needed.

  6. jQuery can be SEO friendly

  You may have the most appealing site, but is it worth it if you sacrifice style for #SEO? The way you code your site greatly affects the way it can be found in Google, Bing, and other search engines.

  As noted, jQuery can be optimized for search engines, and there are a lot of plug-ins available to aid developers in this task. Embedding your jQuery elements using unordered lists is an SEO-friendly practice that works well.

  For example: < UL >Render your jQuery output here< /UL >

  The unordered list is a classic HTML tag that has been around for years -- search engines will pick up or recognize < UL > tags much faster than a custom element or tag -- and will still be utilized in HTML5.

  Another SEO advantage of the HTML5-jQuery combo that's worth mentioning is that animations can be loaded with keywords that can be read by search engines.

  Why you need jQuery

  Let's recap some of the advantages to using jQuery in your next Web development project.

  The price is right. The jQuery library is free.
  It's light. Since jQuery pushes content to the client, it therefore reduces the wait time for server response. Plus, it's smaller than Flash, so it results in smoother playbacks and less errors.
  It works anywhere. HTML5 is cross-browser compatible-it will work on any browser, mobile phone or tablet, and even on Apple devices.
  There's a low learning curve. Since it's based on plain old JavaScript, developers can learn jQuery fast.
  Finally, jQuery is SEO friendly and CSS3 compliant.
  In the future, your company will have to deliver content to a variety of different platforms, including desktops, tablets and smartphones, not to mention the advent of smart TVs and other connected devices. The 1-2 punch of HTML5 and jQuery is one of the best solutions for this type of development.

  Since jQuery is a major component of HTML5, it is worth the time, money and effort for your developers to learn jQuery now. This library can deliver stunning effects with little coding-and, with more and more HTML5 integration, it will be a huge part of the future of Web development. If your goal is to build a site or Web app that is engaging and interactive, then jQuery is a necessary tool for your toolbox.", link: "https://www.javaworld.com/article/2078613/java-web-development/6-reasons-you-should-be-using-jquery.html")

Resource.create(title: "Learn Sinatra", content: "We'll introduce you to the concept of web frameworks and #Sinatra in particular. You'll make sure Sinatra is installed in your computer and run a simple #web #application with it.
  OBJECTIVES
  Differentiate between a website and a web application
  Describe how Web Frameworks like Sinatra simplify web application development through common patterns and conventions
  Distinguish between Sinatra and Rails
  Install Sinatra on your computer
  Run a basic Sinatra application
  WEB APPLICATIONS
  How does Twitter have different pages for each of its 300 million users? How can AirBnB support over 40 million guests with over 1.5 million listings worldwide? All of this is possible because of web applications.
  WHAT'S A WEB FRAMEWORK?
  A web application framework (WAF) is a software #framework that is designed to support the development of dynamic websites, web applications, web services and web resources. The framework aims to alleviate the overhead associated with common activities performed in web development. Wikipedia
  Building dynamic web applications in any language is a complex job requiring intimate knowledge of hundreds of technologies and specifications. The good news, however, is that many of these requirements are universal and every web application must conform to these standards.
  For example, any robust web application will need to handle request routing and provide a mechanism for the application to respond to different URLs with the appropriate response. Even a simple blog application has to handle a request to GET '/posts' to show all the recent blog posts vs a request to GET '/authors' to list all the authors.
  Similarly, web applications require the ability to render templates to produce consistently structured dynamic content. A GET request to /posts/1 must render the HTML for the first post just as a request to GET '/posts/2' will render identically structured HTML but with content for the second post. This is possible because of templates.
  Web frameworks take all these routine and common requirements of any web application and abstract them into code and patterns that provide these functionalities to your application without requiring you to build them yourself.
  Frameworks provide structure and libraries that allow you to focus on your application and not applications in general. The bigger the framework, the more you can rely on it to provide you with common needs. The smaller the framework, the more you'll have to build things yourself.
  WHAT IS SINATRA?
  Sinatra is a #Domain Specific Language implemented in Ruby that's used for writing web applications. Created by Blake Mizerany, Sinatra is Rack-based, which means it can fit into any Rack-based application stack, including Rails. It's used by companies such as Apple, BBC, GitHub, LinkedIn, and more.
  Essentially, Sinatra is nothing more than some pre-written methods that we can include in our applications to turn them into Ruby web applications.
  Unlike Ruby on Rails, which is a Full Stack Web Development Framework that provides everything needed from front to back, Sinatra is designed to be lightweight and flexible. Sinatra is designed to provide you with the bare minimum requirements and abstractions for building simple and dynamic Ruby web applications.
  In addition to being a great tool for certain projects, Sinatra is a great way to get started in web application development with Ruby and will prepare you for learning other larger frameworks, including Rails.
  WHY SINATRA BEFORE RAILS
  We've all heard of '#Ruby on Rails' and how powerful it is. You can build impressive web applications in mere hours! How amazing. Most people, when they learn #Rails for the first time, literally say 'It's like magic!'. But we're developers, and we know that magic isn't real and that other smart developers just built an impressive framework.
  That means it's important to understand the basic concepts of Rails before diving into Rails itself. Enter Sinatra.
  Sinatra is considered a light weight framework where the responsibility of app structure and communication falls solely on the developer. Sinatra doesn't give you a lot to get started with. There is no way to auto-generate files and directories, no way for the app to make assumptions about routes, or 'Sinatra magic'.
  Because of this, working with Sinatra allows you to dive in deep with the major concepts of MVC, a system for building web applications that governs 90% of the worlds' apps. You are required to manually set up routes and connect them to other pieces of your application. Without this manual setup, your application does not automatically know how to communicate with your database or what HTML files to load in the browser. And even more importantly, without a manual setup, you lose connection to the major components of a web application, and in particular, all the moving pieces of #MVC.
  So introduce yourself to Sinatra. Get to know it, and know it well. The better your foundation, the more you'll be able to know (and like) Rails.
  THE SINATRA DSL
  Any application that requires the sinatra library will get access to methods like: get and post. These methods provide the ability to instantly transform a Ruby application into an application that can respond to HTTP requests.", link: "https://learn.co/lessons/what-is-sinatra")

resources = Resource.all 
10.times do |i| 
  Favorite.create(resource_id: resources[i].id, favoritable_id: Student.first.id, favoritable_type: "Student")
end

10.times do |i| 
  Favorite.create(resource_id: resources[i].id, favoritable_id: Teacher.first.id, favoritable_type: "Teacher")
end

Hashtag.create(tag: "#something")
ResourceHashtag.create(resource_id: Resource.last.id, hashtag_id: Hashtag.last)
