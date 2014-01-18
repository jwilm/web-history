# Web Apps, Browsers, Servers, and the HTTP Protocol, OH MY! (A technical history lesson)

Dynamic, interactive, media-rich web applications dominate today's internet landscape. One need only go back two decades in a way back machine to see the origins of the modern Web. Simple hypertext documents with hyperlinks to other documents constituted what was known as the web at the time, HTTP only supported `GET` requests, and any errors had to be inferred through the HTML or PLAINTEXT content of the response since there was no notion of a _Status Code_.

## Gopher

Prior to HTTP was [Gopher](http://en.wikipedia.org/wiki/Gopher_(protocol)) - a simple protocol for distributing, searching, and retrieving documents. Invented at University of Minnesota, Gopher presents a file-like hierarchy of data in addition to being a gateway to usenet and ftp. A major strength of gopher was the abilitiy to connect servers to share directories and resources. Alas, Gopher's rigid document structure was not flexible enough for demands of the web. Combined with licensing fees, implementations in browsers which also supporting HTTP, and licensing fees from the University, Gopher quickly fell out of favor in lieu of HTTP.

## HTTP

HTTP, short for Hypertext Transfer Protocol, was first documented at [version 0.9](http://www.w3.org/Protocols/HTTP/AsImplemented.html) in 1991. HTTP resources are identified via _Uniform Resource Identifiers_ (URIs) and often displayed as _hyperlinks_, a hypertext link to another resource. 

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
