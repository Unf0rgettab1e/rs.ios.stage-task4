import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        if row >= image.count || row < 0 || column >= image[0].count || column < 0  || image == [] {
            return image
        }
        var resultImage = image

        if resultImage[row][column] == newColor {return image}
        else {
            resultImage[row][column] = newColor
            let rowUp = row - 1, rowDown = row + 1, columnLeft = column - 1, columnRight = column + 1
            if rowUp >= 0 && image[row][column] == image[rowUp][column] {
                resultImage = fillWithColor(resultImage, rowUp, column, newColor)
            }
            if rowDown < image.count && image[row][column] == image[rowDown][column] {
                resultImage = fillWithColor(resultImage, rowDown, column, newColor)
            }
            if columnLeft >= 0 && image[row][column] == image[row][columnLeft] {
                resultImage = fillWithColor(resultImage, row, columnLeft, newColor)
            }
            if columnRight < image[0].count && image[row][column] == image[row][columnRight] {
                resultImage = fillWithColor(resultImage, row, columnRight, newColor)
            }
        }
        return resultImage
    }
}
