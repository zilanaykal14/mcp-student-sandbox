def calculate_value(data, multiplier):
    """Calculate processed values based on a multiplier."""
    return [d * multiplier for d in data]

def log_to_file(filename, data):
    """Log data to a specified file."""
    with open(filename, "a") as f:
        f.write(str(data) + "\n")

def display_results(data):
    """Display processed data in a formatted way."""
    for val in data:
        print(f"Total: {val:.2f}")

def process_data(data, multiplier=1.15, log_file="log.txt"):
    """Process data by calculating, displaying, and logging results."""
    processed_data = calculate_value(data, multiplier)
    display_results(processed_data)
    log_to_file(log_file, processed_data)
    return processed_data
