Feature: Edit a Project
  As an admin
  I want to be able to alter an existing project
  so that I can change a Project's description, rating, max team members, and skill sets
  
  Scenario: Admin edit a projects details
    Given I have an admin account
    Given I am logged in as "admin@admin.com" with "password1!"
    Given I have a course with name "any-course" and code "code-123" and description "any-description" and sections "501"
    Given I have a skill with name "any-skill" and description "any-skill-description"
    Given I have a skill with name "new-skill" and description "new-skill-description"
    Given I have a project with name "any-project-name" and description "any-project-description" and difficulty "4" and skill "any-skill" for section "501"
    Given I am on the edit project page for project "any-project-name"
    And I fill in "description" with "new-project-description"
    And I fill in "name" with "new-project-name"
    And I select "2" from "project[difficulty]"
    And I check "new-skill"
    When I press "save"
    Then I should see "new-project-description"
    And I should see "new-project-name"
    And I should see "2"
    And I should see "new-skill" 
    And I should be on the projects page for section "501"
  
  Scenario: Admin press edit project link
    Given I have an admin account
    Given I am logged in as "admin@admin.com" with "password1!"
    Given I have a course with name "any-course" and code "code-123" and description "any-description" and sections "501"
    Given I have a skill with name "any-skill" and description "any-skill-description"
    Given I have a project with name "any-project-name" and description "any-project-description" and difficulty "4" and skill "any-skill" for section "501"
    Given I am on the projects page for section "501"
    And I follow "Edit"
    Then I should be on the edit project page for project "any-project-name"
    And I should see "Name"
    And I should see "any-project-description"
    And I should see "4"
    And I should see "any-skill"
  
  Scenario: Admin presses save project with invalid details
    Given I have an admin account
    Given I am logged in as "admin@admin.com" with "password1!"
    Given I have a course with name "any-course" and code "code-123" and description "any-description" and sections "501"
    Given I have a skill with name "any-skill" and description "any-skill-description"
    Given I have a project with name "any-project-name" and description "any-project-description" and difficulty "4" and skill "any-skill" for section "501"
    Given I am on the edit project page for project "any-project-name"
    And I fill in "name" with ""
    And I fill in "description" with ""
    When I press "save"
    Then I should see "Name"
    And I should see "Description"
    And I should see "Difficulty"
    And I should see "4"
    And I should see "Skills"
    And I should see "any-skill"
    And I should see "prohibited this form from being saved"
    And I should be on the patch project page for project "any-project-name"
    
  Scenario: Admin adds a skill while editing a project
    Given I have an admin account
    Given I am logged in as "admin@admin.com" with "password1!"
    Given I have a course with name "any-course" and code "code-123" and description "any-description" and sections "501"
    Given I have a skill with name "any-skill" and description "any-skill-description"
    Given I have a project with name "any-project-name" and description "any-project-description" and difficulty "4" and skill "any-skill" for section "501"
    Given I am on the projects page for section "501"
    And I follow "Edit"
    Then I should be on the edit project page for project "any-project-name"
    And I should see "Name"
    And I should see "any-project-description"
    And I should see "4"
    And I should see "any-skill"
    Then I press "Add Skill"
    Then I should see "Add Skill"
    And I fill in "skill_name" with "new skill"
    And I fill in "skill_description" with "new skill description"
    Then I press "Create Skill"
    Then I should be on the edit project page for project "any-project-name"
    And I should see "Name"
    And I should see "any-project-description"
    And I should see "4"
    And I should see "any-skill"
    And I should see "new skill"