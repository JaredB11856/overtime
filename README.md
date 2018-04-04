## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- X Bootstrap -> formatting
- Icons from Font Awesome
- X Update the styles for forms

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Refactor posts/_form for admin user with status
- Fix post_spec.rb:82 use factories
- Fix Post_spec.rb52 to have correct user referance and not require update