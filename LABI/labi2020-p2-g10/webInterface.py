import cherrypy
import sqlite3
import time
import PIL
from PIL import Image
from datetime import datetime
import os
import json
import re

baseDir = os.path.dirname(os.path.abspath(__file__))

""" filename = os.path.join(dirname, 'relative/path/to/file/you/want') """

DB_STRING = os.path.join(baseDir,'database/instagram.db') #Path para aas bases de dados
now = datetime.now(tz=None)

#Configuracao dos diretorios
conf = {
  "/":     { "tools.staticdir.root": baseDir },
  "/js":   { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "js" },
  "/css":  { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "css" },
  "/fonts": { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "fonts" },
  "/images": { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "images" },
}

class api(object):
	@cherrypy.expose
	def index(self):
		#Mostrar o conteudo TODO que está na bases de dados
		with sqlite3.connect(DB_STRING) as conn:
			r = conn.execute("SELECT image_name,author,keywords FROM images")
			s = r.fetchall()
			out = ""
			for row in s:
				img = row[0]
				author = row[1]
				keywords = row[2]
				out += """<div class="col-md-4 ftco-animate">
							<a href="labi2020-p2-g10/images/%s" class="photography-entry img image-popup d-flex justify-content-center align-items-center" style="background-image: url(labi2020-p2-g10/images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3>%s</h3>
									<span class="tag">%s</span>
								</div>
							</a>
						</div>"""%(img,img,author,keywords)
			
			return open('index.html','r').read().format(out)

	@cherrypy.expose
	def listImages(self,sort = None,keyword = None,authorname = None,startImage = None,filters = None):
		if(startImage == "" or startImage == None):
			startImage = 1
		else:
			startImage = startImage

		if(sort == None and keyword == None and authorname == None):
			return open('search.html','r').read()
		elif(sort == None and keyword == "" and authorname == ""):
			return open('search.html','r').read()
		else:
			if(sort):
				with sqlite3.connect(DB_STRING) as conn:
					r = conn.execute("SELECT * FROM images where id >= ? ORDER BY ? ASC",[startImage,sort])
					s = r.fetchall()
					out = ""
					sorttxt = ""
					if(sort == "date"):
						sorttxt = "Date"
					if(sort == "votes_up" or sort == "votes_down"):
						sorttxt = "Votes"
					if(sorttxt == "views"):
						sorttxt = "Views"
					for row in s :
						image_id = row[0]
						img = row[1]
						date = row[3]
						author = row[4]
						caption = row[5]
						effects = row[6]
						keyword = row[7]
						votes_up = int(row[8])
						votes_down = int(row[9])
						views = row[10]
						password = row[11]
						secure = row[12]
						votes = votes_up-votes_down
						if (secure == 1):
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img  d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Votes: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<h4 style="color: white"><b>This is a protected image</b></h4>
									<button class="secure" value= %s>Show me the image</button>

								</div>
							</a>
						</div>"""%(img,author,votes, keyword,image_id)
						else:
							out += """<div class="col-md-4 ftco-animate">
							<a  class="photography-entry img d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
        							<h4 style="color: white">Caption: %s</h4>
									<h4 style="color: white">Available Filter: %s<h4>
									<h4 style="color: white">Views: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<button class="nonsecure"  value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,caption,effects,views,keyword,image_id)
      
					return open('sorted.html','r').read().format(sorttxt,sorttxt,out)

			if(keyword):
				with sqlite3.connect(DB_STRING) as conn:
					r = conn.execute("SELECT * FROM images '%' where keywords like ? and id >= ? ",[keyword,startImage])
					s = r.fetchall()
					out = ""
					sorttxt = "Keyword: " + keyword
					for row in s :
						image_id = row[0]
						img = row[1]
						date = row[3]
						author = row[4]
						caption = row[5]
						effects = row[6]
						keyword = row[7]
						votes_up = int(row[8])
						votes_down = int(row[9])
						views = row[10]
						password = row[11]
						secure = row[12]
						votes = votes_up-votes_down
						if (secure == 1):
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img  d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Votes: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<h4 style="color: white"><b>This is a protected image</b></h4>
									<button class="secure" value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,views, keyword,image_id)
						else:
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Caption: %s</h4>
									<h4 style="color: white">Available Filter: %s<h4>
									<h4 style="color: white">Views: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<button class="nonsecure"  value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,caption,effects,views,keyword,image_id)
      
					return open('sorted.html','r').read().format(sorttxt,sorttxt,out,)
	
			if(authorname):
				with sqlite3.connect(DB_STRING) as conn:
					r = conn.execute("SELECT * FROM images '%' where author like ? and id >= ? ",[authorname,startImage])
					s = r.fetchall()
					out = ""
					sorttxt = "Author : " + authorname
					for row in s :
						image_id = row[0]
						img = row[1]
						date = row[3]
						author = row[4]
						caption = row[5]
						effects = row[6]
						keyword = row[7]
						votes_up = int(row[8])
						votes_down = int(row[9])
						views = row[10]
						password = row[11]
						secure = row[12]
						votes = votes_up-votes_down
						if (secure == 1):
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img  d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Votes: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<h4 style="color: white"><b>This is a protected image</b></h4>
									<button class="secure" value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,views, keyword,image_id)
						else:
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Caption: %s</h4>
									<h4 style="color: white">Available Filter: %s<h4>
									<h4 style="color: white">Views: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<button class="nonsecure"  value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,caption,effects,views,keyword,image_id)
      
					return open('sorted.html','r').read().format(sorttxt,sorttxt,out)	
 
			if(filters):
				with sqlite3.connect(DB_STRING) as conn:
					r = conn.execute("SELECT * FROM images '%' where effects like ? and id >= ? ",[filters, startImage])
					s = r.fetchall()
					out = ""
					sorttxt = "Filter : " + filters
					for row in s :
						image_id = row[0]
						img = row[1]
						date = row[3]
						author = row[4]
						caption = row[5]
						effects = row[6]
						keyword = row[7]
						votes_up = int(row[8])
						votes_down = int(row[9])
						views = row[10]
						password = row[11]
						secure = row[12]
						votes = votes_up-votes_down
						if (secure == 1):
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Votes: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<h4 style="color: white"><b>This is a protected image</b></h4>
									<button class="secure" value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,views, keyword,image_id)
						else:
							out += """<div class="col-md-4 ftco-animate">
							<a class="photography-entry img d-flex justify-content-center align-items-center" style="background-image: url(images/%s);">
								<div class="overlay"></div>
								<div class="text text-center">
									<h3 style="color: white">Author: %s</h3>
									<h4 style="color: white">Caption: %s</h4>
									<h4 style="color: white">Available Filter: %s<h4>
									<h4 style="color: white">Views: %s</h4>
									<h4 style="color: white">Keywords: %s</h4>
									<button class="nonsecure" value=%s >Show me the image</button>
								</div>
							</a>
						</div>"""%(img,author,caption,effects,views,keyword,image_id)
      
					return open('sorted.html','r').read().format(sorttxt,sorttxt,out)

	#Expose do About simplesmente da return da página html
	@cherrypy.expose	
	def about(self):
		return open('about.html','r').read()
		  
	@cherrypy.expose	
	def addImage(self,author=None,imageName=None, caption=None, effects=None, keywords=None, password=None,imgToSubmit=None):
	 
		if(author  == None):
			return open('upload.html','r').read()
		else:
			
			with sqlite3.connect(DB_STRING) as conn:
				r = conn.execute("SELECT max(id) FROM images")
				name = r.fetchone()
				
			string1 = ' '.join(map(str, name))
			if (string1+".jpg" == "None.jpg"):
				imageName = "1.jpg"
			else:
				int1 = int(string1)
				int2  = int1+1
				string2 = str(int2)
				imageName = string2 + ".jpg" 
				
			conn.commit()
			conn.close() 
			
			s_secure = 0
			if password:
				s_secure = 1
			if (author, caption, effects):
				with sqlite3.connect(DB_STRING) as conn:
					s = conn.execute("INSERT INTO images (image_name,date, author,caption, effects, keywords, votes_up, votes_down, views, password,secure) VALUES (?,?, ?, ?, ?, ? ,? ,?,?,?,?)",
							[imageName, now, author, caption,effects,keywords, 0, 0, 0 ,password,s_secure])
					conn.commit()
			conn.close()

			upload_path = os.path.join(baseDir,'images/')
			upload_filename = imageName
		
			upload_file = os.path.normpath(
				os.path.join(upload_path, upload_filename))
			size = 0
			with open(upload_file, 'wb') as out:
				while True:
					data = imgToSubmit.file.read(8192)
					if not data:
						break
					out.write(data)	
					size += len(data)

			if(effects=="inversao"):
				im = Image.open(upload_file)
				width, height = im.size

				new_im = Image.new(im.mode, im.size)
				for x in range(width):
					for y in range(height):
						p = im.getpixel((x, y))
						r = p[1]
						g = p[0]
						b = p[2]
						new_im.putpixel((x, y), (r, g, b))
				newfname = upload_filename +"-inversao.jpg"
				new_im.save(os.path.join(baseDir,'images/' + newfname))
				with sqlite3.connect(DB_STRING) as conn:
					r=conn.execute("UPDATE images SET image_effect = ?  WHERE image_name = ?",[newfname,upload_filename])
    
			if(effects=="gray"):
				im = Image.open(upload_file)
				width, height = im.size
				new_im = im.convert("L")
				new_im = Image.new("L", im.size)
    
				for x in range(width):
					for y in range(height):
						p = im.getpixel((x, y))
						l = int(p[0]*0.299 + p[1]*0.587 + p[2]*0.144)
						new_im.putpixel((x, y), (l))

				newfname = upload_filename +"-gray.jpg"
				new_im.save(os.path.join(baseDir,'images/' + newfname))
				with sqlite3.connect(DB_STRING) as conn:
					r=conn.execute("UPDATE images SET image_effect = ?  WHERE image_name = ?",[newfname,upload_filename])
    
			if(effects=="negativo"):
				im = Image.open(upload_file)
				width, height = im.size

				new_im = Image.new(im.mode, im.size)
    
				for x in range(width):
					for y in range(height):
						p = im.getpixel((x, y))
						r = 255 - p[0]
						g = 255 - p[1]
						b = 255 - p[2]
						new_im.putpixel((x, y), (r, g, b))

				newfname = upload_filename +"-negativo.jpg"
				new_im.save(os.path.join(baseDir,'images/' + newfname))
				with sqlite3.connect(DB_STRING) as conn:
					r=conn.execute("UPDATE images SET image_effect = ?  WHERE image_name = ?",[newfname,upload_filename])

			if(effects=="bitrate"):
				im = Image.open(upload_file)
				newfname = upload_filename +"-bitrate.jpg"
				path = os.path.join(baseDir,'images/' + newfname)
				for i in [1]:
					im.save(path, quality=i)
				with sqlite3.connect(DB_STRING) as conn:
					r=conn.execute("UPDATE images SET image_effect = ?  WHERE image_name = ?",[newfname,upload_filename])

			return open('upload.html','r').read()
   
	@cherrypy.expose
	def addComment(self,authorComment,comment,idImageComment):
		with sqlite3.connect(DB_STRING) as conn:
				r=conn.execute("INSERT into comment(comment,author, image_id) values (?,?,?)",[comment, authorComment, idImageComment])

		return open('search.html','r').read()
	
	#Atualizar o numero de votes up na base de dados
	@cherrypy.expose
	def addVoteUp(self,idImage):
			id1 = str(idImage)
			with sqlite3.connect(DB_STRING) as conn:
				r=conn.execute("UPDATE images SET votes_up = votes_up + 1 WHERE id = ?",[str(idImage)])

			with sqlite3.connect(DB_STRING) as conn:
				r=conn.execute("Select votes_up from images where id = ?",[str(idImage)])
				s=r.fetchone()
				m=str(s)
				m = re.sub('(),', '', m)
				return m

	#Atualizar o numero de votes down na base de dados
	@cherrypy.expose
	def addVoteDown(self,idImage):
			id1 = str(idImage)
			with sqlite3.connect(DB_STRING) as conn:
				r=conn.execute("UPDATE images SET votes_down = votes_down + 1 WHERE id = ?",[str(idImage)])

			with sqlite3.connect(DB_STRING) as conn:
				r=conn.execute("Select votes_down from images where id = ?",[str(idImage)])
				s=r.fetchone()
				m=str(s)
				m = re.sub('(),', '', m)
				return m
				
	@cherrypy.expose
	def getFullImageSecure(self,fullImageValue,password):
		with sqlite3.connect(DB_STRING) as conn:
				r = conn.execute("SELECT password FROM images where id = ?",[fullImageValue])
				s = r.fetchone()
				pw = str(s[0]) 
				out=""
				out2=""
				out1=""
				out3=""
				if(password == (pw)):
					r=conn.execute("UPDATE images SET views = views + 1 where id = ?",[fullImageValue])
					r=conn.execute("select * from images where id = ?",[fullImageValue])
					s=r.fetchall()
					for row in s:
						image_id = row[0]
						img = row[1]
						img_effect = row[2]
						date = row[3]
						author = row[4]
						caption = row[5]
						effects = row[6]
						keyword = row[7]
						votes_up = int(row[8])
						votes_down = int(row[9])
						views = row[10]
						password = row[11]
						secure = row[12]
						out +=""" <img src="images/%s" alt="Avatar" ">"""%(img)
						out1+=""" <img src="images/%s" alt="Avatar" ">"""%(img_effect)
						out2 +="""<input type="hidden" id="id" value="%s"">"""%(image_id)
						""" r=conn,execute("SELECT comment from comment where image_id = ?",[fullImageValue])
						s=r.fetchall() """
						
					r=conn.execute("select * from comment where image_id = ?",[fullImageValue])
					s=r.fetchall()
					for row in s:
						author = row[2]
						comment =row[1]
						out3 += """ <h4>%s: %s</h4> """%(author,comment)
					return open('fullImage.html','r').read().format(out,out1,date,author,caption,effects,keyword,votes_up,votes_down,views,out2,out3)
				else:
					return "Wrong password..."
 
	@cherrypy.expose
	def getFullImage(self,fullImageValue):
		with sqlite3.connect(DB_STRING) as conn:
				r = conn.execute("UPDATE images SET views = views + 1 where id = ?",[fullImageValue])
				s = r.fetchone()
				out1=""
				out=""
				out2=""
				out3=""
				r=conn.execute("SELECT * from images where id = ?",[fullImageValue])
				s=r.fetchall()
				for row in s:
					image_id = row[0]
					img = row[1]
					img_effect = row[2]
					date = row[3]
					author = row[4]
					caption = row[5]
					effects = row[6]
					keyword = row[7]
					votes_up = int(row[8])
					votes_down = int(row[9])
					views = row[10]
					password = row[11]
					secure = row[12]
					out +=""" <img src="images/%s" alt="Avatar" ">"""%(img)
					out1+=""" <img src="images/%s" alt="Avatar" ">"""%(img_effect)
					out2 +="""<input type="hidden" id="id" value="%s"">"""%(image_id)
					""" r=conn,execute("SELECT comment from comment where image_id = ?",[fullImageValue])
					s=r.fetchall() """
					r=conn.execute("select * from comment where image_id = ?",[fullImageValue])
					s=r.fetchall()
					for row in s:
						author = row[2]
						comment =row[1]
						out3 += """ <h4>%s: %s</h4> """%(author,comment)
					return open('fullImage.html','r').read().format(out,out1,date,author,caption,effects,keyword,votes_up,votes_down,views,out2,out3)

#Inicializar o servidor a partir do script
cherrypy.server.socket_port = 10010
cherrypy.config.update({'server.socket_port': 10010}) #Porta 100XX sendo XX-> 10 que é o número do nosso grupo
cherrypy.server.socket_host = "0.0.0.0"
cherrypy.tree.mount(api(), "/", conf)
cherrypy.engine.start()
cherrypy.engine.block()