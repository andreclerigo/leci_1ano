import cherrypy

class Node(object):
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Node (Node.index)"

    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Node (Node.page)"

class Root(object):
    def __init__(self):
        self.node = Node()
        self.html = HTMLDocument()

    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"

    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"

class HTMLDocument(object):
    @cherrypy.expose
    def index(self):
        f = open("index.html", "r")
        return f.read()

if __name__ == "__main__":
    cherrypy.quickstart(Root())