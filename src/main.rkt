#lang racket

;; Import necessary modules for building the web server.
(require web-server/servlet
         web-server/servlet-env)

;; Define the servlet function that handles web requests.
(define (start req)
  (response/xexpr
   '(html
     (head (title "Hello, World"))
     (body
      (h1 "Welcome to the Racket Web App!")
      (p "This is a basic web application created using Racket.")))))

;; Start the web server by serving the servlet.
(serve/servlet start
  #:port 8080                ; Port where the server will listen.
  #:listen-ip #f             ; Listen on all available interfaces.
  #:launch-browser? #t)      ; Automatically open the default web browser.