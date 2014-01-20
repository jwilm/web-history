# Web Apps, Browsers, Servers, and the HTTP Protocol, OH MY! (A technical history lesson)

Today we are inundated by dynamic, interactive, media-rich web applications with pixel perfect designs. [Fortunes are spent](http://www.fastcompany.com/1825005/how-one-second-could-cost-amazon-16-billion-sales) each year on shaving a few kilobytes off file size and a few milliseconds off page load times to deliver an immersive experience across mobile, tablets, and desktop clients. Just two decades ago, the internet was a dramatically different landscape having little in common with modern web apps. Static Hypertext documents constituted the entirety of the web, HTTP only supported `GET` requests, and errors had to be inferred through the HTML or PLAINTEXT content of the response. This is the story of the web's transformation from static to dynamic and (almost) back again.

## The Early Web

Prior to HTTP was [Gopher](http://en.wikipedia.org/wiki/Gopher_protocol) - a simple protocol for distributing, searching, and retrieving documents. Invented at University of Minnesota, Gopher presents a file-like hierarchy of data in addition to being a gateway to usenet and ftp. A major strength of gopher was the abilitiy to connect servers to share directories and resources. Alas, Gopher's rigid document structure was not flexible enough for demands of the web. Combined with licensing fees, implementations in browsers which also supporting HTTP, and licensing fees from the University, Gopher quickly fell out of favor in lieu of HTTP.

The originally documented HTTP Protocol ([Version 0.9, 1991](http://www.w3.org/Protocols/HTTP/AsImplemented.html)) only suppoted `GET` requests, status codes did not exist, and content was entirely static. This was sufficient to deliver simple hypertext documents, but additional request types, and a robust set of behavior modifying switches would be needed to propel HTTP into the 21st century.

## A Dynamic Server

Dyanmic markup was being served already despite the simplicity of current HTTP. CGI (_Common Gateway Interface_) was [first being standardized](http://en.wikipedia.org/wiki/Common_Gateway_Interface#History) by the NCSA in 1993. CGI allowed web servers to run arbitrary programs on the host server (such as a Perl or Python script). There were several issues with this strategy including overhead from creation of new processes for each request, and the ease of introducing security holes in CGI script.

`POST`, `PUT`, `DELETE`, and other request types were introduced into browsers as early as 1992, but the world had to wait until for an official specification until 1996 when the IETF released [RFC 1945](http://tools.ietf.org/html/rfc1945) _Hypertext Transfer Protocol -- HTTP/1.0_. Of course, that didn't stop web browsers from implementing such features. The spec described many features necessary to deliver today's modern application - namely two more request types, `POST` and `HEAD`, status codes, and a suite of powerful headers to enable compression, basic authentication, caching, and content-type switching.

Scripting languages were now in heavy use. FastCGI was being developed by Open Market, Inc. in the mid 90s to combat the overhead of standard CGI. Python has been available since 1991, and PHP and Ruby were released in 1995. All of these scripting languages were callable from both CGI and FastCGI. Combined with additional HTTP functionality, these scripting languages powered a dynamic web where users could both retrieve and update information on a server.

The Apache web server (first released as update to NCSA httpd in 1995) became the most popular server of the time. The modular architecture offered the ability to include interpretters and CGI handlers directly in the web server, thereby avoiding much overhead from generating dynamic markup. 

Primitive web applications became possible due to dyanamically generated markup in concert with forward looking HTTP features. Such applications could could both retrieve and send data to the server, but every action would require a new request to the server to alter the page. _SSL_ (secure sockets layer), introduced in 1995, would allow HTTP to run within an encrypted tunnel and therefore enable secure business transactions.

## A Dynamic Client

Client side scripting was introduced in 1995 when Netscape shipped a little  language called _LiveScript_ (now _JavaScript_) with their browser. The release of JavaScript was followed shortly by _Sun Java_ and _Macromedia Flash_. Browsers could now dynamically change the page content without any request to the server, but it would not be until 1999 when microsoft specified their IXMLHttpRequest that a page could communicate with the server and not trigger a full page reload. This new capability, combined with client side scripting and the _DOM_ would usher in the _AJAX_ era.

_HTTP/1.1_ finally standardized the full suite of HTTP request types, added connection reuse for transfering additional assets (scripts, images, etc), cache-control headers (which enabled very intelligent caching). Around the same time, Dr. Roy Fielding described _REST_, Representational State Transfer, in chapter 5 of his 2000 [doctoral dissertation](http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm) _Architectural Styles and the Design of Network-based Software Architectures_. This architecture, when applied to the HTTP protocol and URIs, yields scalable interactions, general interfaces, and testable components. It is the basis of modern URI design for API end points and mapping of HTTP verbs to actions.

## HTML5, RESTful JSON APIs, Client-Side Templating, and the JavaScript Framework

Modern web apps utilize a large amount of state to deliver their service. Examples include deciding which content to send, remembering users between visits, maintaining a shopping cart when navigating between resources, and escalating a user's privilege to perform administrative actions. Since HTTP is a stateless protocol, those functionalities are achieved via _cookies_ (persistent named records stored on a client) which enable sessions and user tracking on the server.

With the rise of RESTful JSON APIs, client side templating, and JavaScript frameworks, much of the work a web server does it limited to providing an API to the database. Most logic outside of administrative and other privileged tasks can be moved out to the client. The advantages of such an architecture include the ability to server almost all assets from a global CDN and only serving small blocks of JSON from the application server.


## Notes

- Browser history

- XMLHttpRequest
  - Invention credited to Microsoft for their Outlook Web App suite. This  as IXMLHttpRequest in Internet Explorer 5.0 in March of 2009

- Dynamic Web
  - Client
    - Flash, Java, and JavaScript
  - Server
    - Common gateway interface
    - Run arbitrary code on the server to return dynamically generated HTML
    - Typically Perl, Python, PHP at the time
    - [Rails](http://rubyonrails.org/) 2004
    - [PHP](http://php.net/) 1995
    - [Django](https://www.djangoproject.com/) 2005
    - [Sinatra](http://www.sinatrarb.com/) 2007

- HTTP Protocol
  - Preceeded by [Gopher](http://en.wikipedia.org/wiki/Gopher_protocol)

- General purpose web servers
  - [Apache](http://en.wikipedia.org/wiki/Apache_HTTP_Server) 1995
    - Modular HTTP server
    - mod_ssl, mod_php, mod_cgi, mod_proxy
  - [Nginx](http://en.wikipedia.org/wiki/Nginx) 2002
    - Open source reverse proxy for HTTP, HTTPS, SMTP, IMAP, POP3
    - Load balancer
    - HTTP Cache

- Integrate scripting + web server
  - Ruby, Node, Java, D, Go, Python, Scala, C++, etc
  - Integrate web server and web app framework

[RESTwiki]: http://en.wikipedia.org/wiki/Representational_state_transfer

