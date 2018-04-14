## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI
- X AuditLog

## Features:
- X Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- X Administrate admin dashboard
- X Block non admin and guest users
- X Email summary to managers for approval
- X Needs to be documented if employee did not log overtime
- X Creat audit log for each text message
- X Need to update end_date when confirmed
- Need to update auidit log status when an overtime rejected
- Update buttons on employee homepage so they show on mobile
- Update buttons to include time span
- Update button sort order on employee homepage
- Rempve unnecessary nav bar buttons for managers
- Fix admin dashboard bug
- Implement Honeybadger for error reporting
- Implement new relic for keeping the site alive
- Check on data issue and verify correct hours are being tracked

##  TODOS: