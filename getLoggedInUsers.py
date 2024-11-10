import subprocess

def get_logged_in_users():
	try:
		result = subprocess.run(['who'], capture_output=True, text=True, check=True)
		users = result.stdout.strip().split('\n')

		print("Logged in users:")
		for user in users:
			print(user)
	except subprocess.CalledProcessError as e:
		print(f"Error occured while fetching logged-in users: {e}")

if __name__ == "__main__":
	get_logged_in_users()
