# Database modeling process
## Organize informations
RECRUITER
- can log in (*login, password*)
- can create 1 COMPANY
- can publish OFFERS for their COMPANY
- gets a list of APPLICANTS to each of their OFFERS

COMPANY
- *name, description*

OFFER
- *title, description, city*

APPLICANT
- can sign up (*login, password, name, lastname, email, phone number, introduction*)
- consult OFFERS
- appy to OFFERS
- gets a list of COMPANIES they applied to
