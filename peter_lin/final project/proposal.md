The final project will be a platform for mock interviews. The website will match recent graduates in industry (mock interviewers) with current students (interviewees). The first customer segment we will attack will be finance students who hope to break into banking and sales & trading.

The website will need to allow users to sign up for the service, and to be able to sign into the dashboard. There will be two different account tiers, for interviewers and interviewees. 

The interviewer should be able to view interviewees’ resumes.

When it is almost time for an interview, the website will email both parties with a link to the dashboard. The dashboard will display who the interviewer/interviewees are, what the interview will be about, and a button for opening google hangouts. A google hangouts app will need to built separately (not part of the rails app).

There will be a home page, about page, pricing page, and contacts page.

The site will be using the Action Mailer, part of the rails gem, for emailing and the Stripe API, for payments.
The site will a need a gem for loading files (Carrier wave) for displaying resumes.
Possible Schemas: Person, Interview, Payment checkout

The HTTPS module, part of the rails gem, can be used for secured payments.

(Note: I’ll be working with a friend who basically designed this layout for me. I have no idea how feasible this project is)

 