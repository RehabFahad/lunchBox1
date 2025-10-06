//
//  Meal.swift
//  lunchBox2
//
//  Created by Latifa Farhan Al-Mawash on 14/04/1447 AH.
//

import Foundation

struct Meal: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let imageName: String
    let ingredients: [String]
    let instructions: [String]
}
// عيّنة: Turkey Sandwich (تأكدي إن فيه Asset بنفس الاسم)
enum SampleMeals {
    static let turkeySandwich = Meal(
        name: "Turkey Sandwich",
        imageName: "turkeySandwich",   // اسم الصورة في Assets
        ingredients: [
            "2 slices whole-grain bread, toasted",
            "3–4 slices roasted turkey breast",
            "1 slice cheddar cheese (optional)",
            "1 leaf romaine lettuce",
            "2 slices tomato",
            "1 tbsp mayonnaise",
            "1 tsp mustard (optional)",
            "Salt & black pepper to taste"
        ],
        instructions: [
            "Toast the bread slices lightly until golden.",
            "Spread mayonnaise (and mustard if using) on one side of each slice.",
            "Place lettuce and tomato on the bottom slice, season lightly.",
            "Add turkey slices and cheese (if using).",
            "Top with the second slice of bread (mayo side down).",
            "Cut in half and serve with a side of salad or fries."
        ]
    )
    static let pestoPasta = Meal(
        name: "Pesto Chicken Pasta",
                imageName: "pesto",   // اسم الصورة في Assets
                ingredients: [
                    "8 ounces whole-wheat penne",
                    "1 pound fresh asparagus, trimmed and cut into 2-inch pieces",
                    "3 cups shredded cooked chicken breast",
                    "1 (7 ounce) container refrigerated basil pesto",
                    "1 teaspoon salt",
                    "¼ teaspoon ground pepper",
                    "1 ounce Parmesan cheese, grated (about 1/4 cup)",
                    "Small fresh basil leaves for garnish"
                ],
                instructions: [
                    "Cook pasta in a large pot according to package directions. Add asparagus to the pot during the final 2 minutes of cooking time. Drain, reserving 1/2 cup cooking water.",
                    "Return the pasta mixture to the pot; stir in chicken, pesto, salt and pepper.",
                    "Stir in the reserved cooking water, 1 tablespoon at a time, to reach desired consistency.",
                    "Transfer the mixture to a serving dish; sprinkle with Parmesan and garnish with basil, if desired.",
                    "Serve immediately."
                ]
            )
    static let marinaraPasta = Meal(
        name: "Pasta Al Marinara",
                imageName: "marinara",   // اسم الصورة في Assets
                ingredients: [
                    "1 tablespoon olive oil",
                        "2 links sweet Italian turkey sausage (8 oz.), such as Jennie-O, casing removed, crumbled",
                        "1 small red bell pepper, chopped (about 3/4 cup)",
                        "½ medium onion, chopped (about 1/2 cup)",
                        "4 cups chopped kale (3 oz.)",
                        "2 cloves garlic, minced",
                        "¼ teaspoon crushed red pepper (optional)",
                        "1 ½ cups water",
                        "¾ cup whole-wheat penne pasta (3 oz.)",
                        "2 tablespoons grated Parmesan cheese"
                ],
                instructions: [
                    "Heat oil in a large nonstick skillet over medium-high heat. Add sausage; cook, stirring, until no longer pink, 2 to 4 minutes. Transfer to a plate.",
                        "Add bell pepper and onion to the pan; cook, stirring occasionally, until softened, about 5 minutes.",
                        "Stir in kale, garlic, crushed red pepper (if using), and the sausage; cook, stirring, until the kale is wilted, about 3 minutes.",
                        "Stir in water and pasta; bring to a boil, stirring occasionally.",
                        "Reduce heat to medium-low, cover, and cook until the pasta is tender, 8 to 10 minutes.",
                        "Sprinkle with Parmesan and serve immediately."
                ]
            )
    static let fettuccine = Meal(
        name: "fettuccine",
                imageName: "fettuccine",   // اسم الصورة في Assets
                ingredients: [
                    "12 ounces whole-wheat fettuccine",
                        "1 tablespoon extra-virgin olive oil",
                        "4 cups sliced mixed mushrooms, such as cremini, oyster and/or shiitake",
                        "4 cups thinly sliced Brussels sprouts",
                        "1 tablespoon minced garlic",
                        "1/2 cup dry sherry (see Note), or 2 tablespoons sherry vinegar",
                        "2 cups low-fat milk",
                        "2 tablespoons all-purpose flour",
                        "½ teaspoon salt",
                        "½ teaspoon freshly ground pepper",
                        "1 cup finely shredded Asiago cheese, plus more for garnish"                ],
                instructions: [
                    "Cook pasta in a large pot of boiling water until tender, 8 to 10 minutes. Drain, return to the pot and set aside.",
                       "Meanwhile, heat oil in a large skillet over medium heat. Add mushrooms and Brussels sprouts and cook, stirring often, until the mushrooms release their liquid, 8 to 10 minutes.",
                       "Add garlic and cook, stirring, until fragrant, about 1 minute.",
                       "Add sherry (or vinegar), scraping up any brown bits; bring to a boil and cook, stirring, until almost evaporated, 10 seconds (if using vinegar) or about 1 minute (if using sherry).",
                       "Whisk milk and flour in a bowl; add to the skillet with salt and pepper. Cook, stirring, until the sauce bubbles and thickens, about 2 minutes.",
                       "Stir in Asiago until melted. Add the sauce to the pasta; gently toss.",
                       "Serve with more cheese, if desired."
                ]
            )
}
