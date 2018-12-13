# SocialMedium.destroy_all
# Tool.destroy_all
# Other.destroy_all
# Interpersonal.destroy_all
# Skill.destroy_all
# Project.destroy_all
# Profile.destroy_all
# Experience.destroy_all
# Education.destroy_all
# Resume.destroy_all
# User.destroy_all




User.create!({
    username: "alex",
    email: "alex@alex.com",
    password_digest: "alex123",
    role: "admin",
    avatar: "http:myavatar.com"
})

Resume.create!({
    user_id: 1
})

Education.create!({
    resume_id: 1,
    start_date: "05-23-1992",
    end_date: "05-23-2018",
    location: "81 prospect st",
    degree: "Software Engineer",
    university: "Flatiron School",
    description: "Software developer intensive program 18 weeks"
})

Experience.create!({
    resume_id: 1,
    start_date: "01-21-1998",
    end_date: "01-21-2017",
    location: "81 prospect st",
    role: "Software Engineer",
    company: "Wework",
    description: "Working as a TCF"
})

Profile.create!({
    resume_id: 1,
    name: "Celestino Salim",
    age: 26,
    location: "828 saint johns pl",
    number: "646-704-8637",
    profile_picture: "http://asdasdasda.com",
    headline: "Software Developer",
    about_me: "highly motivated software dev",
    background_image: "http://asdasdasdas.com",

})

Project.create!({
    resume_id: 1,
    name: "Alex Project",
    url: "http://adsasdasdas.com",
    description: "my first cool project"
})


Skill.create!({
    resume_id: 1
})


Interpersonal.create!({
    skill_id: 1,
    name: "good person"
})

Other.create!({
    skill_id: 1,
    name: "French"
})


Tool.create!({
    skill_id: 1,
    name: "javascript"
})



SocialMedium.create!({
    resume_id: 1,
    name: "facebook",
    logo: "http://facebook/com"
})


