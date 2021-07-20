import os
import cherrypy

print(__file__)
PATH = os.path.abspath(os.path.dirname(__file__))
print(PATH)
print(os.path.dirname(__file__))
conf = {
    "/omeuficheiro": {
        "tools.staticfile.on": True,
        "tools.staticfile.filename": os.path.join(PATH, "omeuficheiro.html")
    }
}

class Root(object):

    @cherrypy.expose
    def index(self):
        f = open("formulario.html", "r")
        return f.read()
        #cherrypy.response.headers["Content-Type"] = "text/html"
        #return open("index.html", "r").read()

cherrypy.tree.mount(Root(), '/', config=conf)
cherrypy.server.start()
