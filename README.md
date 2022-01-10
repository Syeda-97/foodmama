# food_mama

A Flutter project on Multi-Restaurant Online Ordering System.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Some user interfaces of the following app's screenshot is provided below:

![launcher logo](https://user-images.githubusercontent.com/56088042/141607325-7a40ef5a-774a-49a6-b7f8-6f0dff67a257.PNG)
![login](https://user-images.githubusercontent.com/56088042/141607315-274ffc9b-e85e-48ab-91dd-aa71290567b6.PNG)
![reg](https://user-images.githubusercontent.com/56088042/141607320-8f5c891f-b648-4709-b28e-d0a32d5420b0.PNG)
![bottom nav bar](https://user-images.githubusercontent.com/56088042/141607324-c45180e2-4761-4fe7-bb30-d167013654f7.PNG)
![orders](https://user-images.githubusercontent.com/56088042/141607321-6696907c-3a9d-41c1-87f6-b7e1d26e555e.PNG)
![food_details](https://user-images.githubusercontent.com/56088042/141607323-17cd20b4-5990-467b-8cf3-c8ac1857e7a2.PNG)




############################
Documentation of Food Mama Flutter App


Project name: Food Mama
Feature details:
This is the UI/UX design of a Flutter-based app. In this task, I have shown the usage of Firebase real-time database to view food information (food’s name, price, description etc.) from firebase database. Here, I have also shown the usage of firebase notification, dynamic theming concept, authentication using firebase, adding login information to firebase database, usage of bloc state management system etc.
 
 ![image](https://user-images.githubusercontent.com/56088042/148737520-282833c1-7c82-4266-96f5-6fa1349110ec.png)

Fig A: Loading Screen 

In Fig A, loading screen displays when the app loads and navigate to navigation screen where bottom navigation bar lies having home, offer, favorite, cart pages.




![image](https://user-images.githubusercontent.com/56088042/148737638-0680571d-f959-4fdf-8041-3fe3a8bcaf85.png)  ![image](https://user-images.githubusercontent.com/56088042/148737653-7adbcb5d-c950-4d4f-bfb8-b6df99b4aa64.png)



         
                Fig B: Home Screen                                             Fig C: Firebase database


Here, the home or main screen displays staggered grid view with the list of foods from the firebase database (shown in Fig C) as shown in Fig B. I also added tab bar to view different tabs as per user desired food category. 
![image](https://user-images.githubusercontent.com/56088042/148737696-ffa308c9-03b2-4297-8f53-c041db21c626.png)  ![image](https://user-images.githubusercontent.com/56088042/148737720-e888fe7a-d313-4869-81ca-b84f01bdb39d.png)



                
                     Fig D: Push notification             Fig E: Push notification alert count

Fig D displays firebase push notification mechanism to send a notification message to user. In Fig E, firebase push notification alert count is being shown which will increment automatically when notification is being pushed from firebase or tabbed on notification icon of homepage.


 ![image](https://user-images.githubusercontent.com/56088042/148737749-52b055d7-fd9b-42d5-ba85-05464a8c8b5c.png)

Fig F: Drawer 

Fig F displays drawer having logged in user information like username, photo and email address as well it contains some pages like orders, notifications, history etc.

        ![image](https://user-images.githubusercontent.com/56088042/148737765-b4298af1-225b-4920-a258-a8cffe6a37d9.png)  ![image](https://user-images.githubusercontent.com/56088042/148737793-51fe755a-786d-4013-9e78-e0ffa6aa3c54.png)


Fig G: Login page                                	    Fig H: Register page

In Fig G, login page is shown where email and password need to be given if the user is registered then it will redirect to homepage and in snack bar it will provide message otherwise user need to register shown in Fig H.

 ![image](https://user-images.githubusercontent.com/56088042/148737882-744f9d1c-4c0a-453d-a266-fc81d499caef.png)

    Fig I: Firebase authentication
Fig I display firebase email password authentication mechanism. If user is not registered then it will provide message in snack bar.
![image](https://user-images.githubusercontent.com/56088042/148737904-7e86eebe-9bcf-4f11-9247-db920209b966.png)

 
    Fig J: Firebase database to save data

In Fig J, I just saved some data in firebase database from login and register page of our app. The password of any kind of user shouldn’t save for any purpose without user consent but just to show the workings of firebase database post mechanism we have saved it too in our database.
      ![image](https://user-images.githubusercontent.com/56088042/148737928-4c7d50f4-d817-4266-b866-a242bede403b.png)  ![image](https://user-images.githubusercontent.com/56088042/148737945-0b7b36ad-8781-45aa-a007-7891d21693d7.png)

 
       Fig K: Terms and Conditions page                      Fig L: Privacy page 

Fig K and L shows Terms and Conditions and Privacy page respectively where dummy content is being provided.
                    ![image](https://user-images.githubusercontent.com/56088042/148737970-4630c653-7046-481f-b756-52b1d3faf379.png)  ![image](https://user-images.githubusercontent.com/56088042/148737990-68a5404b-12fc-4a1a-8083-a7cb69a55fd2.png)

 
                Fig M: Notifications page                     Fig N: History page

In Fig M, list of notifications will be saved on notification page and in Fig N, the list of history will be saved on history page where I shown the usage of List view.
![image](https://user-images.githubusercontent.com/56088042/148738009-dc20357b-c77c-4d7c-9786-33d425b40821.png)

 
Fig O: Language Settings page

Fig O displays the UI of language settings page.
 ![image](https://user-images.githubusercontent.com/56088042/148738025-65d2ae9c-2f86-40ff-bef0-929820672b3f.png)

Fig P: Help & support page

If user have any query regarding this app or face any problem while using this app then they may take support from us by providing us some of their basic contact info and the message regarding the issue which is shown in Fig P. We would try to reach them soon by mailing or calling them.
 ![image](https://user-images.githubusercontent.com/56088042/148738045-5715ccf8-9dd9-4935-83e3-bdc1e6681ea9.png)

Fig Q: Settings page
User have the option to choose their desired theme in Settings page shown in Fig Q. To do this particular task of dynamic theming, we used bloc state management system to manage our states throughout the app.
![image](https://user-images.githubusercontent.com/56088042/148738056-17b2bca3-2716-4c05-95e8-2ffa4a116c13.png)

 
Fig R: Dark mode

Fig R shows dark mode of the app.
       ![image](https://user-images.githubusercontent.com/56088042/148738084-ff3a175d-002e-4bb3-8b25-6bba11b29b31.png)  ![image](https://user-images.githubusercontent.com/56088042/148738103-ef1863dc-4261-4aa9-92ba-decaf9242ffa.png)


             Fig S: Food details page                            Fig T: Ordered food page

While pressing on each item of staggered grid view food details page will be open for that particular item (shown in Fig S) and if user press floating action button having plus icon then that item will be added as ordered food and will be shown as an item in list which is shown in Fig T.



Summary
This app has dynamic theming, login, register and order option. For new offers and discounts users will be notified and those notifications will be saved in a page. It has user friendly UI design for better understanding of users regarding all of the options provided in the app. It can be used as food delivery system, grocery management system etc.






