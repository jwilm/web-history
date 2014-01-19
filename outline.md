# Web Apps, Browsers, Servers, and the HTTP Protocol, OH MY! (A technical history lesson)

Dynamic, interactive, media-rich web applications dominate today's internet landscape, but one needs only go back two decades in a way back machine to see a simple and static world wide web. Static Hypertext documents with Hyperlinks to other documents constituted the entirety of the web, HTTP only supported `GET` requests, and errors had to be inferred through the HTML or PLAINTEXT content of the response. This is the story of the web's transformation from static to dynamic and (almost) back again.

## The early web

Prior to HTTP was [Gopher](http://en.wikipedia.org/wiki/Gopher_protocol) - a simple protocol for distributing, searching, and retrieving documents. Invented at University of Minnesota, Gopher presents a file-like hierarchy of data in addition to being a gateway to usenet and ftp. A major strength of gopher was the abilitiy to connect servers to share directories and resources. Alas, Gopher's rigid document structure was not flexible enough for demands of the web. Combined with licensing fees, implementations in browsers which also supporting HTTP, and licensing fees from the University, Gopher quickly fell out of favor in lieu of HTTP.

The originally documented HTTP Protocol ([Version 0.9, 1991](http://www.w3.org/Protocols/HTTP/AsImplemented.html)) only suppoted `GET` requests, status codes did not exist, and content was entirely static. This was sufficient to deliver hypertext documents to clients, but without additional request types, servers could only retrieve information.

`POST`, `PUT`, `DELETE`, and other request types were introduced into browsers as early as 1992, but the world had to wait until for an official specification until 1996 when the IETF released [RFC 1945](http://tools.ietf.org/html/rfc1945) _Hypertext Transfer Protocol -- HTTP/1.0_. The spec described many features necessary to deliver today's modern application - namely two more request types, `POST` and `HEAD`, status codes, and a suite of powerful headers to enable compression, basic authentication, caching, and content-type switching.

Roy Fielding released

### Stateless

Modern web apps utilize a large amount of state to deliver their service. Examples include deciding which content to send, remembering users between visits, maintaining a shopping cart when navigating between resources, and escalating a user's privilege to perform administrative actions. Since HTTP is a stateless protocol, those functionalities are achieved via _cookies_ (persistent named records stored on a client) which enable sessions and user tracking on the server.

With the rise of RESTful JSON APIs, client side templating, and JavaScript frameworks, much of the work a web server does it limited to providing an API to the database. Most logic outside of administrative and other privileged tasks can be moved out to the client. The advantages of such an architecture include the ability to server almost all assets from a global CDN and only serving small blocks of JSON from the application server.

### Requests
HTTP is first and foremost a request and response protocol. A client sends a request to the server, 

## Notes

- Browser history

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

