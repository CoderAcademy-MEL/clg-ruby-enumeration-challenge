# frozen_string_literal: true

module WidgetModel

    # Widget class
    class Widget
        
        attr_reader :id
        attr_accessor :name
        attr_accessor :description
        attr_accessor :lengthcms
        attr_accessor :widthcms
        attr_accessor :heightcms
        attr_accessor :weightgms
        attr_accessor :valueaud

        @@instance_count = 0

        def initialize(id,
            name,
            description,
            lengthcms,
            widthcms,
            heightcms,
            weightgms,
            valueaud)

            @id = id
            @name = name
            @description = description
            @lengthcms = lengthcms
            @widthcms = widthcms
            @heightcms = heightcms
            @weightgms = weightgms
            @valueaud = valueaud

            @@instance_count += 1
        end

        def self.get_instance_count
            @@instance_count
        end

        def to_s
            "id: #{id}, name: #{@name}, description: #{@description}, lengthcms: #{@lengthcms}, widthcms: #{@widthcms}, heightcms: #{@heightcms}, weightgms: #{@weightgms}, valueaud: #{@valueaud.round(2)}"
        end

        def to_hash_with_symbols
            hash = {}
            instance_variables.each { |var| 
                if (var == :@valueaud)
                    hash[var.to_s.delete("@").to_sym] = instance_variable_get(var).round(2)
                else
                    hash[var.to_s.delete("@").to_sym] = instance_variable_get(var) 
                end
            }
            hash
        end

    end

    # WidgetDataSet class
    class WidgetDataSet

        def self.make_widget_array_data_set
            arr = []
            arr << Widget.new(1, 'widget1', 'civil', 92, 3, 4, 4, 5.56)
            arr << Widget.new(2, 'widget2', 'witty', 39, 11, 17, 1, 2.03)
            arr << Widget.new(3, 'widget3', 'cowardly', 68, 6, 2, 2, 6.69)
            arr << Widget.new(4, 'widget4', 'embarrassed to the bone', 73, 49, 18, 4, 8.4)
            arr << Widget.new(5, 'widget5', 'mischievous', 11, 11, 21, 1, 7.48)
            arr << Widget.new(6, 'widget6', 'unable', 10, 40, 2, 1, 6.84)
            arr << Widget.new(7, 'widget7', 'wonderful', 65, 37, 20, 2, 7.89)
            arr << Widget.new(8, 'widget8', 'glorious', 86, 4, 22, 0, 2.05)
            arr << Widget.new(9, 'widget9', 'bearded', 22, 44, 5, 4, 4.04)
            arr << Widget.new(10, 'widget10', 'flirting', 14, 38, 16, 3, 1.08)
            arr << Widget.new(11, 'widget11', 'sorry', 93, 24, 21, 1, 6.36)
            arr << Widget.new(12, 'widget12', 'historical', 55, 21, 25, 0, 9.17)
            arr << Widget.new(13, 'widget13', 'automatic', 3, 25, 17, 5, 5.12)
            arr << Widget.new(14, 'widget14', 'financial', 3, 3, 16, 0, 4.57)
            arr << Widget.new(15, 'widget15', 'house-broken', 31, 6, 16, 4, 0.95)
            arr << Widget.new(16, 'widget16', 'slippery', 88, 49, 1, 4, 0.9)
            arr << Widget.new(17, 'widget17', 'obviously', 70, 5, 17, 1, 6.89)
            arr << Widget.new(18, 'widget18', 'unhappy', 16, 6, 0, 3, 1.18)
            arr << Widget.new(19, 'widget19', 'sickened', 30, 22, 9, 2, 3.81)
            arr << Widget.new(20, 'widget20', 'ridiculous', 89, 23, 9, 1, 4.84)
            arr << Widget.new(21, 'widget21', 'historical', 60, 31, 0, 4, 0.73)
            arr << Widget.new(22, 'widget22', 'hilarious', 21, 6, 20, 0, 2.19)
            arr << Widget.new(23, 'widget23', 'metal', 91, 16, 18, 5, 3.74)
            arr << Widget.new(24, 'widget24', 'talking', 74, 19, 22, 2, 8.81)
            arr << Widget.new(25, 'widget25', 'for grins', 51, 50, 22, 5, 2.44)
            arr << Widget.new(26, 'widget26', 'blithe', 73, 9, 21, 0, 7.31)
            arr << Widget.new(27, 'widget27', 'shivering', 27, 43, 10, 3, 4.5)
            arr << Widget.new(28, 'widget28', 'out of control', 94, 47, 16, 0, 8.83)
            arr << Widget.new(29, 'widget29', 'sick', 41, 20, 7, 3, 7.33)
            arr << Widget.new(30, 'widget30', 'unlikely', 49, 3, 2, 3, 7.5)
            arr << Widget.new(31, 'widget31', 'bull headed', 25, 5, 21, 2, 6.72)
            arr << Widget.new(32, 'widget32', 'tiny', 97, 17, 19, 5, 9.72)
            arr << Widget.new(33, 'widget33', 'every', 63, 39, 17, 2, 1.53)
            arr << Widget.new(34, 'widget34', 'insecure', 33, 1, 9, 5, 3.88)
            arr << Widget.new(35, 'widget35', 'impertinent', 35, 16, 22, 0, 5.91)
            arr << Widget.new(36, 'widget36', 'at-the-ready', 10, 32, 5, 4, 7.29)
            arr << Widget.new(37, 'widget37', 'medical', 76, 48, 8, 2, 5.82)
            arr << Widget.new(38, 'widget38', 'careful', 41, 3, 19, 1, 7.31)
            arr << Widget.new(39, 'widget39', 'wild', 66, 21, 8, 0, 0.31)
            arr << Widget.new(40, 'widget40', 'knee-slapper', 53, 40, 3, 5, 6.98)
            arr << Widget.new(41, 'widget41', 'latter', 67, 2, 16, 0, 8.56)
            arr << Widget.new(42, 'widget42', 'blithe', 59, 25, 25, 2, 5.86)
            arr << Widget.new(43, 'widget43', 'traditional', 84, 7, 23, 1, 5.77)
            arr << Widget.new(44, 'widget44', 'gas', 99, 45, 15, 1, 8.88)
            arr << Widget.new(45, 'widget45', 'nighttime', 98, 7, 12, 3, 3.88)
            arr << Widget.new(46, 'widget46', 'bull headed', 69, 16, 4, 5, 1.06)
            arr << Widget.new(47, 'widget47', 'sorry', 55, 38, 23, 5, 0.74)
            arr << Widget.new(48, 'widget48', 'laughable', 50, 7, 19, 1, 5.14)
            arr << Widget.new(49, 'widget49', 'insane', 28, 36, 18, 4, 3.21)
            arr << Widget.new(50, 'widget50', 'very tactful', 20, 37, 6, 0, 3.97)
            arr << Widget.new(51, 'widget51', 'haunting', 90, 27, 9, 2, 4.25)
            arr << Widget.new(52, 'widget52', 'relevant', 44, 2, 2, 0, 7.08)
            arr << Widget.new(53, 'widget53', 'laughable', 24, 28, 7, 5, 6.63)
            arr << Widget.new(54, 'widget54', 'high-end', 63, 48, 11, 2, 5.03)
            arr << Widget.new(55, 'widget55', 'risible', 63, 14, 8, 4, 4.69)
            arr << Widget.new(56, 'widget56', 'medical', 47, 18, 17, 1, 1.25)
            arr << Widget.new(57, 'widget57', 'decent', 40, 48, 18, 1, 4.22)
            arr << Widget.new(58, 'widget58', 'sick', 18, 41, 9, 2, 9.87)
            arr << Widget.new(59, 'widget59', 'wooden', 33, 9, 4, 4, 9.32)
            arr << Widget.new(60, 'widget60', 'accurate', 88, 34, 8, 4, 5.11)
            arr << Widget.new(61, 'widget61', 'technical', 13, 1, 25, 1, 4.97)
            arr << Widget.new(62, 'widget62', 'every', 13, 20, 2, 3, 0.73)
            arr << Widget.new(63, 'widget63', 'jocose', 64, 17, 19, 4, 7.08)
            arr << Widget.new(64, 'widget64', 'additional', 88, 35, 22, 4, 8.89)
            arr << Widget.new(65, 'widget65', 'mental', 84, 10, 13, 3, 0.21)
            arr << Widget.new(66, 'widget66', 'careful', 77, 0, 18, 5, 9.96)
            arr << Widget.new(67, 'widget67', 'laughable', 14, 41, 12, 1, 2.45)
            arr << Widget.new(68, 'widget68', 'humdinger', 52, 39, 19, 1, 8.96)
            arr << Widget.new(69, 'widget69', 'difficult', 39, 17, 9, 0, 2.47)
            arr << Widget.new(70, 'widget70', 'humdinger', 54, 7, 23, 5, 8.91)
            arr << Widget.new(71, 'widget71', 'aware', 55, 39, 9, 3, 6.62)
            arr << Widget.new(72, 'widget72', 'nighttime', 65, 11, 3, 4, 1.06)
            arr << Widget.new(73, 'widget73', 'entertaining', 42, 37, 19, 1, 1.11)
            arr << Widget.new(74, 'widget74', 'misunderstood', 42, 10, 6, 5, 3.5)
            arr << Widget.new(75, 'widget75', 'gas', 59, 40, 5, 2, 0.11)
            arr << Widget.new(76, 'widget76', 'mirthful', 19, 23, 9, 0, 0.87)
            arr << Widget.new(77, 'widget77', 'sportive', 69, 14, 3, 3, 1.17)
            arr << Widget.new(78, 'widget78', 'sickened', 82, 19, 2, 0, 6.29)
            arr << Widget.new(79, 'widget79', 'competitive', 25, 7, 23, 1, 2.13)
            arr << Widget.new(80, 'widget80', 'sick', 72, 41, 6, 3, 1.79)
            arr << Widget.new(81, 'widget81', 'hilarious', 93, 38, 19, 5, 1.77)
            arr << Widget.new(82, 'widget82', 'federal', 93, 49, 10, 1, 1.38)
            arr << Widget.new(83, 'widget83', 'popular', 91, 47, 22, 3, 7.11)
            arr << Widget.new(84, 'widget84', 'painfully honest', 79, 23, 9, 5, 5.29)
            arr << Widget.new(85, 'widget85', 'jolly', 56, 30, 19, 2, 2.3)
            arr << Widget.new(86, 'widget86', 'good-humored', 23, 40, 12, 5, 8.09)
            arr << Widget.new(87, 'widget87', 'ludicrous', 13, 4, 20, 0, 3.3)
            arr << Widget.new(88, 'widget88', 'generous', 89, 0, 20, 4, 5.45)
            arr << Widget.new(89, 'widget89', 'nighttime', 82, 14, 12, 2, 7.55)
            arr << Widget.new(90, 'widget90', 'hot', 54, 50, 12, 0, 1.74)
            arr << Widget.new(91, 'widget91', 'automatic', 73, 38, 25, 2, 9.99)
            arr << Widget.new(92, 'widget92', 'tripping', 11, 5, 17, 4, 8.42)
            arr << Widget.new(93, 'widget93', 'out of control', 54, 10, 2, 3, 8.86)
            arr << Widget.new(94, 'widget94', 'jolly', 48, 33, 11, 4, 9.83)
            arr << Widget.new(95, 'widget95', 'pleased', 2, 16, 9, 5, 7.73)
            arr << Widget.new(96, 'widget96', 'witty', 63, 18, 1, 5, 2.74)
            arr << Widget.new(97, 'widget97', 'hilarious', 46, 18, 15, 4, 0.61)
            arr << Widget.new(98, 'widget98', 'consistent', 100, 18, 15, 2, 1.63)
            arr << Widget.new(99, 'widget99', 'bonkers', 75, 42, 18, 4, 2.12)
            arr << Widget.new(100, 'widget100', 'terrible', 52, 4, 12, 4, 4.72)

            arr

        end

    end

    # WidgetManager class
    class WidgetManager

        def self.generate_widgets_array
            WidgetDataSet.make_widget_array_data_set
        end

        def self.generate_widgets_as_array_of_hash
            w = generate_widgets_array
            ah = []
            w.each do |w|
                ah << w.to_hash_with_symbols
            end
            ah
        end

    end

end

