use std::thread;

struct Hamster {
	name: String,
	age: u32,
	size: u16 
}

fn main() {
	let h = Hamster {
		name: "Bruce Lee".to_string(),
		age: 2,
		size: 1 
	};
	println!("My Hamster's name is: {}",h.name);	
	let handle = thread::spawn(|| {
		"Hello from a thread!"
	});
	println!("{}", handle.join().unwrap());
}


