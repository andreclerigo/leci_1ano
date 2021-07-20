import cherrypy

class HelloWorld(object):
    @cherrypy.expose
    def index(self):
        host = cherrypy.request.headers["Host"]
        return "You have sucessfully reached " + host

cherrypy.quickstart(HelloWorld())