class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :name, default: 'Name'
      t.integer :age, default: 26
      t.string :location, default: 'Address'
      t.string :number, default: '000-000-0000'
      t.string :profile_picture, default: 'https://theimag.org/wp-content/uploads/2015/01/user-icon-png-person-user-profile-icon-20-300x300.png'
      t.string :headline,  default: 'Full Stack Web Developer'
      t.string :about_me, default: 'I am awesome, amazing, beautiful and confident I don’t need someone to make me realize it!'
      t.string :background_image, default: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwcICA0HBwgHBwcHBw0HBwcHBw8ICQcKFREWFhUREx8YKCggGCYlGxMTITEhJSkrLi4uFx8zODMtNygtLjcBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAKgBLAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAgMEAQUG/8QAGRABAQEBAQEAAAAAAAAAAAAAAAECAxEx/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/APtHYJSAlmLsZQxGjnkE+eWnnhDnlq55BLnhoxlzGV2YDucrJCRKQCRKQjoA6AAAAAAAAAAA4OgIWOWJuWAqsVay0WK9QGXeWbphu1lR0yDzumGbpl6HTLL0yDFuKtRp3lTqAqcSqIOxZmI5i3EBZiNPPKrnGrnkFvPLVzyq55acQE8ZXZiOYskB2RKORIB0AAAAAAAAAAAAAAAHHQEKjYsqNgKdRTvLTYq3AYumWXplv6ZZeuQYOmWfcbOuWbcBm1EVmohYCWYuxFeV/OAu5xr5xRyjXygLucacRVzi/EBPMTjkSgOxJx0AAAAAAAAAAAAAAAAAAHHKk5QQsV6i2q9QGfcZusbNxm6QGHrGTpG/rGPpAZNxXYu3FVgJ4aOcUYaecBp5Rr5Rm5Rr5QF+IvyqxF2QTiURicAjoAAAAAAAAAAAAAAAAAAAOOuUHKhpOo0FO4z9I06UdIDH1jH1jd1jJ1gMXSKa0dIooJ4aeTPhp5A1cmvmy8mvkDRhdlVhbkE4kjEoDoAAAAAAAAAAAAAAAAAAAAAI1Gp1Cgr0o20aUbBk6snVs6snUGPoorR0UX6CWGnmzYaeQNfJr5MnJr5g04W5U4XZBOJRGJA6AAAAAAAAAAAAAAAAAAAAADlQqVRoIaUbXaU7Bl6snVr6snUGTqoq/oov0HcNPNlw0c6DbyrXyrFyrXyoNWF2VGKuyC2JRCJQEggAAAAAAAAAAAAAAAAAAA5XXAcqNSqFBDSja3dUdKDP1Y+tautZOtBm6KKt6VTQMNHOs2V+KDZzrXzrDzrXzoNuKvzWXnV+KC+JxVmrICTrkdAAAAAAAAAAAAAAAAAAAcHKDlQ1Uqr1QQ3WbpV26zdKCjpWTrWjrWTpQU7qmrN1VQM1biqItzQa+daudYedaeegb+emjFYuemnnoGrNWSqM1bmgtjqEqUBIcdAAAAAAAAAAAAAAABwCo0qNoOWq9VLVU7oIdKy9NLemmXpoFXSsvSremmfdBVuq7UtVACJ5quJSg0YrTz0x5q/Ggbuemnnpg56aeegbsaXZrJz0vxoGiVKVVmpygsjqEqUoJDjoAAAAAAAAAAA4AOWlqNoFqFpar1Qc1VG9J70z9NAh00y9NLOmmbpoFfTTPup7qrVBG1ErgDsAE81bigC/npp56cAacaaMaAF2dLc0ATlSlAHfXfQB0AHQAAAAAcABz1y0ARtRtAENaU70AKN7Z+mgBm6aZ96AFOqqtAEQAf/Z'
      t.string :profile_email, default: "example@gmail.com"
      t.timestamps
    end
  end
end
