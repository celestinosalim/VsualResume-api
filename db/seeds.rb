User.create!({
    username: "alex",
    email: "alex@alex.com",
    password_digest: "alex123",
    role: "admin",
    avatar: "http:myavatar.com"
})

Resume.create!({
    name: "resume",
    user_id: 1,
    profile_id:1,
    social_media_id:1,
    education_id:1,
    experience_id:1,
    project_id:1,
    skill_id:1,
})

Education.create!({
    start_date: "05-23-1992",
    end_date: "05-23-2018",
    location: "81 prospect st",
    degree: "Software Engineer",
    university: "Flatiron School",
    description: "Software developer intensive program 18 weeks"
})

Experience.create!({
    start_date: "01-21-1998",
    end_date: "01-21-2017",
    location: "81 prospect st",
    role: "Software Engineer",
    company: "Wework",
    description: "Working as a TCF"
})

Profile.create!({
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
    name: "Alex Project",
    url: "http://adsasdasdas.com",
    description: "my first cool project"
})


Skill.create!({
    name: "skill",
    skill_other_id: 1,
    skill_tools_id: 1,
    skill_interpersonal_id: 1
})


SkillInterpersonal.create!({
    name: "good person"
})

SkillOther.create!({
    name: "French"
})


SkillTool.create!({
    name: "javascript"
})



SocialMedium.create!({
    name: "facebook",
    logo: "http://facebook/com"
})


