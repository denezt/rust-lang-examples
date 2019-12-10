
#![allow(unused_variables)]
fn main() {
	struct User { 
		username: String,
		email: String,
		sign_in_count: u64,
		active: bool,
	}

	fn build_user(email: String, username: String) -> User {
		User {
			email: email,
			username: username,
			active: true,
			sign_in_count: 1,
		}
	}
	let user1 = build_user("myname@email.com".to_string(),"maxx_mustermann".to_string());

	let user2 = User {
	    email: String::from("another@example.com"),
	    username: String::from("anotherusername567"),
	    active: user1.active,
	    sign_in_count: user1.sign_in_count,
	};	

	println!("User 2 email : {} {}",user1.email,user1.username);
}


