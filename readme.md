<p align="center"><font size=6>Sites, Applications, and Virtual Directories in IIS 7 and Above</font></p>


<font size=4>Sites</font>
- A site contains all the content, both static and dynamic, that is associated with that site. 
However, each site must contain at least one application(called the root application), which is named the root application. 
And each application must contain at least one virtual directory, which is named the root virtual directory. 
These objects work together to form the site.

- A site is a container for applications and virtual directories, and you can access it through one or more unique bindings.

- A site may contain more than one binding if the site requires different protocols or binding information.

<font size=4>Applications</font>

- An application is a group of files that delivers content or provides services over protocols, such as HTTP. When you create an application in IIS, the application's path becomes part of the site's URL.

- In IIS 7 and above, each site must have an application which is named the root application, or default application. 

- However, a site can have more than one application. For example, you might have an online commerce Web site that has several applications, such as a shopping cart application that lets users gather items during shopping and a login application that allows users to recall saved payment information when they make a purchase.

- In addition to belonging to a site, an application belongs to an application pool, which isolates the application from applications in other application pools on the server.

- Application pools responsible for to isolate one or more applications into their own process. For example you have two different website like website-A and website-B and want to deploy on same server, then application pool isolate your website means website-A run on one application pool and website-B run on another application pool.

<font size=4>Virtual Directories</font>

- A virtual directory is a directory name (also referred to as path) that you specify in IIS and map to a physical directory on a local or remote server. 

- In IIS 7 and above, each application must have a virtual directory, which is named the root virtual directory, and which maps the application to the physical directory that contains the application's content. However, an application can have more than one virtual directory. 

- For example, you might use a virtual directory when you want your application to include images from another location in the file system, but you do not want to move the image files into the physical directory that is mapped to the application's root virtual directory.




<font size=4>OVERVIEW</font>

- A site contains one or more applications.

- An application contains one or more virtual directories.

- And a virtual directory maps to a physical directory on a computer.
