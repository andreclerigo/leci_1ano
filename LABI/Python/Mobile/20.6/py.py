import cherrypy
import time

class HelloWorld(object):
    @cherrypy.expose
    def index(self):
        # Método serve_file tb poderia ser utilizado
        f = open("index.html")
        data = f.read()
        f.close()
        return data

    @cherrypy.expose
    def time(self):
        cherrypy.response.headers["Content-Type"] = "application/json"
        return time.strftime('{"date":"%d-%m-%Y", "time":"%H:%M:%S"}').encode('utf-8')

cherrypy.server.socket_port = 8080
cherrypy.server.socket_host = "0.0.0.0"
cherrypy.tree.mount(HelloWorld(), "/", "app.config")
cherrypy.engine.start()
cherrypy.engine.block()