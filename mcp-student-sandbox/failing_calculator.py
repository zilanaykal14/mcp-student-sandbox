def average_ratios(numbers):
    total = 0
    count = 0  # Sıfır olmayan sayıların sayısını takip etmek için
    for i in range(len(numbers)):
        if numbers[i] == 0:
            print(f"Warning: Division by zero avoided at index {i}.")
            continue  # Sıfır olan değerleri atla
        total += 100 / numbers[i]
        count += 1

    if count == 0:
        print("Error: No valid numbers to calculate average.")
        return 0  # Geçerli bir sayı yoksa 0 döndür

    return total / count

print(average_ratios([10, 5, 0]))
